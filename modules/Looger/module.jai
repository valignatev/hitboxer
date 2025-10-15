#module_parameters(DEBUG := false);

logging_thread: Thread;

Looger :: struct {
    initted: bool;
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
    // TODO: We might allocate array itself onto the same pool, at the start of it,
    // and then reset the pool to the end of the array water mark. We'll need a
    // custom reset procedure for this
    log_strings: [..]Log_String;
    // 1-based. 0 means we haven't seen logs yet
    last_seen_log: s64;
}


Log_String :: struct {
    message: string;
    info: Log_Info;
    data: *void;
}


init_looger :: (num_threads: u32, log_file_path: string, max_log_file_size: u32, also_log_to_stdout: bool = false) -> success: bool {
    looger_global.per_thread = NewArray(num_threads, Looger_Per_Thread);
    looger_global.log_file_path = log_file_path;
    looger_global.also_log_to_stdout = also_log_to_stdout;
    looger_global.max_log_file_size = max_log_file_size;

    for * looger_global.per_thread {
        init(*it.pool, reserve=4096);
        it.allocator.proc = flat_pool_allocator_proc;
        it.allocator.data = *it.pool;
        // at 4096 bytes per string arena, 30 strings have roughtly 40 bytes per string
        // which sounds like kinda enough.
        array_reserve(*it.log_strings, 100);
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
    // NOTE: We allow logging thread to log itself through the same facility. Yolo!
    tid := context.thread_index;
    per_thread := *looger_global.per_thread[tid];

    currently_allocated := per_thread.pool.current_point - per_thread.pool.memory_base;

    #if DEBUG {
        print("[%]: currently_allocated: %\n", tid, currently_allocated);
    }

    if currently_allocated + message.count >= 4096 {
        #if DEBUG {
            print(
                "[%] ACHKTUNG!!!! POOL HAS % ALLOCATED WITH % STRINGS, TRYING TO ADD %\n",
                tid, currently_allocated, per_thread.log_strings.count, currently_allocated + message.count,
            );
        }

        while per_thread.log_strings.count > per_thread.last_seen_log {
            // Waking the consumer thread in case it's waiting, so we don't spin forever.
            wake(*conditional);
            #if DEBUG {
                print("[%] SPINNING\n", tid);
            }
            spin();
        }

        atomic_swap(*per_thread.last_seen_log, 0);
        array_reset_keeping_memory(*per_thread.log_strings);
        reset(*per_thread.pool);
    }

    message_in_the_pool := copy_string(message,, per_thread.allocator);

    log_string: Log_String;
    log_string.message = message_in_the_pool;
    log_string.info = info;
    log_string.data = data;
    // put mutex around it?
    array_add(*per_thread.log_strings, log_string);
    // unlock the array

    wake(*conditional);
}


handle_logging :: (thread: *Thread) -> s64 {

    has_work_to_do := false;
    while true {
        // We check if there's work to do

        for * pt, pti: looger_global.per_thread {

            if pt.log_strings && pt.log_strings.count > pt.last_seen_log {
                has_work_to_do = true;
                break;
            }
        }

        // But then here, after we checked, but before we went to sleep,
        // thread added work and called wake. Since we're not waiting just yet,
        // wake is wasted, and we then wait instead of consuming the work.
        if !has_work_to_do {
            // if there is no work to do, we wait on condition
            wait(*conditional, *mutex);
            continue;
        }

        for * pt, pti: looger_global.per_thread {
            log_strings := array_view(pt.log_strings, pt.last_seen_log);
            for log_strings {
                write_log(it);
                atomic_increment(*pt.last_seen_log);
            }
        }
    }

    return 0;
}


write_log :: (using log_string: Log_String) {
    using looger_global;
    now := current_time_consensus();
    calendar_utc := to_calendar(now, .UTC);
    date_s := calendar_to_string(calendar_utc);
    formatted_message: string;
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
        runtime_support_default_logger(message, data, info);
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
#import "Flat_Pool";
#import "String";

#if OS == .LINUX {
    #import "POSIX";

    sendfile :: (out_fd: s32, in_fd: s32, offset: *s64, count: u64) -> s64 #foreign libc;
}
