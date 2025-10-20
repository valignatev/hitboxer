#module_parameters(DEBUG := false);

Looger_Callback :: #type (log_string: Log_String);

Looger :: struct {
    initted: bool;
    thread: Thread;
    callback: Looger_Callback;
    max_log_file_size := 1000_000;
    log_file: File;
    log_file_path: string;
    also_log_to_stdout: bool;
    per_thread: []Looger_Per_Thread;
}


looger_global: Looger;


Looger_Per_Thread :: struct {
    pool: Flat_Pool;
    // Flat_Pool's flat_pool_allocator_proc
    allocator: Allocator;
    // These are absolute addresses that always point into the pool.
    // If I don't like this, I might turn them into offsets relative to pool's memory_base.
    // We store Log_String header, immediately followed by its message .data
    write_offset: *u8;
    read_offset: *u8;
}


Log_String :: struct {
    timestamp: Apollo_Time;
    message: string;
    thread_index: u32;
    info: Log_Info;
    data: *void;
}


init_looger :: (num_threads: u32, log_file_path: string, max_log_file_size: u32, also_log_to_stdout: bool = false, callback: Looger_Callback = null) -> success: bool {
    looger_global.per_thread = NewArray(num_threads, Looger_Per_Thread);
    looger_global.log_file_path = log_file_path;
    looger_global.also_log_to_stdout = also_log_to_stdout;
    looger_global.max_log_file_size = max_log_file_size;
    looger_global.callback = callback;

    for * looger_global.per_thread {
        it.pool.alignment = 8;
        init(*it.pool, reserve=4096);
        it.allocator.proc = flat_pool_allocator_proc;
        it.allocator.data = *it.pool;
        it.write_offset = it.pool.memory_base;
        it.read_offset = it.pool.memory_base;
    }

    file_open_success: bool;
    looger_global.log_file, file_open_success = file_open(looger_global.log_file_path, for_writing=true, keep_existing_content=true);

    if !file_open_success {
        log_error("Couldn't open the log file, your errors will only be logged to the console\n");
    } else {
        looger_global.initted = true;
    }

    return true;
}


looger :: (message: string, data: *void, info: Log_Info) {
    // NOTE: We allow logging thread to log itself through the same facility because why not.
    tid := context.thread_index;
    per_thread := *looger_global.per_thread[tid];

    log_size := size_of(Log_String) + message.count;

    current_point := FP.Align(per_thread.pool.current_point, per_thread.pool.alignment);

    if current_point + log_size > per_thread.pool.address_limit {
        #if DEBUG {
            print(
                "[%] Resetting log_strings pool: trying to add: %, allocated: %\n",
                tid, log_size, per_thread.pool.current_point - per_thread.pool.memory_base,
            );
        }

        while per_thread.write_offset > per_thread.read_offset {
            // Waking the consumer thread in case it's waiting, so we don't spin forever.
            wake(*conditional);
            #if DEBUG {
                print("[%] logger spinning\n", tid);
            }
            spin();
        }

        atomic_swap(*per_thread.write_offset, per_thread.pool.memory_base);
        atomic_swap(*per_thread.read_offset, per_thread.pool.memory_base);
        reset(*per_thread.pool);
    }

    log_string := New(Log_String,, per_thread.allocator);
    message_in_the_pool := copy_string(message,, per_thread.allocator);
    log_string.timestamp = current_time_consensus();
    log_string.message = message_in_the_pool;
    log_string.thread_index = tid;
    log_string.info = info;
    log_string.data = data;

    atomic_swap(*per_thread.write_offset, per_thread.pool.current_point);
    wake(*conditional);
}


handle_logging :: (thread: *Thread) -> s64 {
    has_work_to_do := false;

    while true {
        // We check if there's work to do
        for * pt, pti: looger_global.per_thread {
            if pt.write_offset > pt.read_offset {
                has_work_to_do = true;
                break;
            }
        }

        // RACE: after we checked, but before we went to sleep,
        // thread added work and called wake. Since we're not waiting just yet,
        // wake is wasted, and we then wait instead of consuming the work.
        if !has_work_to_do {
            // if there is no work to do, we wait on condition
            wait(*conditional, *mutex);
            continue;
        }

        for * pt, pti: looger_global.per_thread {
            while pt.write_offset > pt.read_offset {
                log_string := pt.read_offset.(*Log_String);
                write_log(log_string);
                atomic_swap(*pt.read_offset, next_read_offset(pt, log_string));
            }
        }
    }

    return 0;
}


// Flat_Pool is 2-aligned, so we need to bump it up a bit to get the next Log_String
next_read_offset :: inline (pt: Looger_Per_Thread, log_string: Log_String) -> *u8 {
    result := FP.Align(pt.read_offset + size_of(Log_String) + log_string.message.count, pt.pool.alignment);
    return result;
}


write_log :: (using log_string: Log_String) {
    using looger_global;
    calendar_utc := to_calendar(timestamp, .UTC);
    date_s := calendar_to_string(calendar_utc);

    formatted_message: string;

    defer {
        // TODO: Probably don't use temp storage for the logging thread at all,
        // instead just use a static array or a small flat pool to do string formatting;
        ts_occupied := context.temporary_storage.total_bytes_occupied;
        if ts_occupied > 4000 {
            reset_temporary_storage();
        }
    }

    if callback {
        callback(log_string);
    }

    if message[message.count - 1] != #char "\n" {
        formatted_message = tprint("%: %\n", date_s, message);
    } else {
        formatted_message = tprint("%: %", date_s, message);
    }

    if !initted {
        runtime_support_default_logger(formatted_message, data, info);
        return;
    }
    if also_log_to_stdout {
        #if DEBUG {
            runtime_support_default_logger(tprint("[%] - %", log_string.thread_index, message), data, info);
        } else {
            runtime_support_default_logger(message, data, info);
        }
    }

    // TODO: file_length (at least on Linux) segfaults when you call it before file_open. Mail fix in. Check Windows.
    length, success := file_length(log_file);
    if !success {

        // Just one attempt to reopen the log file again.
        log_file, success = file_open(log_file_path, for_writing=true, keep_existing_content=true);
        if !success {
            runtime_support_default_logger("Couldn't write to the log file: file_open\n", data, info);
            return;
        }

        length, success = file_length(log_file);
        if !success {
            runtime_support_default_logger("Couldn't write to the log file: file_len\n", data, info);
            return;
        }

    }
    if length {
        if length > max_log_file_size {
            rotate_log_file(data, info);
        }

        length=, success := file_length(log_file);
        if !success {
            runtime_support_default_logger("Couldn't write to the log file: file_length after truncation\n", data, info);
            return;
        }

        success = file_set_position(log_file, length);
        if !success {
            runtime_support_default_logger("Couldn't write to the log file: file_set_position\n", data, info);
            return;
        }
    }

    success = file_write(*log_file, xx formatted_message.data, formatted_message.count);
    if !success {
        runtime_support_default_logger("Couldn't write to the log file: file_write\n", data, info);
        return;
    }
}


log_warning :: (format_string: string, args: .. Any, loc := #caller_location, flags := Log_Flags.NONE, user_flags : u32 = 0, section : *Log_Section = null) {
    new_flags := flags | .WARNING;
    log(format_string, ..args, loc, new_flags, user_flags, section);
} @PrintLike


// When log file exceeds max_log_file_size, we only leave 10% from the tail of the old log file and
// delete everything else from the beginning;
rotate_log_file :: (data: *void, info: Log_Info) {
    using looger_global;

    error_info := info;
    error_info.common_flags |= .ERROR;

    #if OS == .LINUX {
        file_in := fileno(log_file.handle);
        found, left, right := split_from_right(log_file_path, #char "/");
        assert(found, "Something wrong with the log file path\n", log_file_path);
        temp_log_file_path := join(left, "log_temp.txt", separator="/" ,, temp);
        new_log_file, success := file_open(temp_log_file_path, for_writing=true);

        if !success {
            // MessageBox on windows?
            runtime_support_default_logger("Could not rotate logs, please delete log.txt manually\n", data, error_info);
            return;
        }

        file_out := fileno(new_log_file.handle);

        // TODO: This is kind of stupid because it moves some random part of the log instead
        //  of being on at a line boundary.
        log_size:, success = file_length(log_file);
        offset := log_size - (max_log_file_size * 0.1).(s64);
        size : u64 = 100_000;
        if success {
            size = (max_log_file_size * 0.1).(u64);
        }

        result := sendfile(file_out, file_in, *offset, size);

        if result == -1 {
            runtime_support_default_logger("Could not rotate logs, please delete log.txt manually\n", data, error_info);
            return;
        }

        file_close(*log_file);

        // This doesn't do any error reporting lol
        file_move(temp_log_file_path, log_file_path);

        log_file, success = file_open(log_file_path, for_writing=true, keep_existing_content=true);

        if !success {
            runtime_support_default_logger("Could not rotate logs, please delete log.txt manually\n", data, error_info);
        }

        success = file_write(*log_file, "\n**********\n".data, "\n**********\n".count);
        if !success {
            runtime_support_default_logger("Couldn't write to the log file: file_write\n", data, info);
            return;
        }
    }
}


#scope_module


conditional: Condition_Variable;
mutex: Mutex;


#scope_file


spin :: () {
    #if CPU == .X64 {
        #asm {
            pause;
        }
    } else #if CPU == .ARM64 {
        #bytes .[0x3F, 0x20, 0x03, 0xD5]; // YIELD
    } else {
        #assert false;
    }
}


#import "Atomics";
#import "Basic";
#import "Thread";
#import "File";
using FP :: #import "Flat_Pool";
#import "String";

#if OS == .LINUX {
    #import "POSIX";

    sendfile :: (out_fd: s32, in_fd: s32, offset: *s64, count: u64) -> s64 #foreign libc;
}
