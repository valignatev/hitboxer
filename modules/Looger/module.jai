logging_thread: Thread;
logging_efd: s32;

String_Builder_Ring :: struct {
    num_builders: u32;
    builder_size: u32; // in bytes
    builders: []String_Builder;

    allocator: Allocator;

    write_positions: []Write_Position;
}

Write_Position :: struct {
    current_substring: s64;
    current_builder_length: s64;
    substrings: [..]Builder_Substring;
}

Builder_Substring :: struct {
    buffer: *String_Builder.Buffer;
    offset: s64; // offset into the buffer where the string starts;
    count: s64; // length of the string
    info: Log_Info;
    occupied: bool;
}


log_ring: *String_Builder_Ring;


init_log_ring :: (num_builders: u32) -> success: bool {
    // Make size per builder buffer the same as in String_Builder.jai for easier write_position calculation.
    // Might make it more fancy later.
    size_per_builder_buffer: u32 = 4096 - size_of(String_Builder.Buffer);

    log_ring = New(String_Builder_Ring);
    if log_ring == null {
        log_error("Could not allocate log buffer\n");
        return false;
    }

    log_ring.num_builders = num_builders;
    log_ring.builder_size = size_per_builder_buffer;

    log_ring.builders = NewArray(num_builders, String_Builder);
    for * log_ring.builders {
        init_string_builder(it, buffer_size=size_per_builder_buffer);
    }

    log_ring.write_positions = NewArray(num_builders, Write_Position);
    // TODO: Can't iterate over pointers here for some reason. Maybe a compiler bug.
    for log_ring.write_positions {
        array_resize(*it.substrings, 20, initialize=false);
    }
    return true;
}

log :: (format_string: string, args: .. Any, loc := #caller_location, flags := Log_Flags.NONE, user_flags : u32 = 0, section : *Log_Section = null) {

    // TODO: this is temporary, only works for my program because I know that
    // thread №1 is logging thread!
    tid := context.thread_index;
    if tid > 0 tid -= 1;

    builder := *log_ring.builders[tid];
    wp := *log_ring.write_positions[tid];

    if wp.current_substring >= wp.substrings.count {
        // resetting the counters here might happen while logging thread depletes substrings if it's
        // not fast enough. I don't want to synchronize them, but I need to reliable way to catch it to assess how
        // likely it is to happen.
        wp.current_substring = 0;
        wp.current_builder_length = 0;
        builder.current_buffer = get_base_buffer(builder);
        builder.current_buffer.count = 0;
    }

    current_buffer := get_current_buffer(builder);
    buffer_offset := current_buffer.count;

    current_substring := *wp.substrings[wp.current_substring];
    current_substring.occupied = false;
    current_substring.buffer = current_buffer;
    current_substring.offset = buffer_offset;

    current_substring.info.source_identifier = context.log_source_identifier;
    current_substring.info.location          = loc;
    current_substring.info.common_flags      = flags;
    current_substring.info.user_flags        = user_flags;
    current_substring.info.section           = section;

    // No error recovery from here.
    print_to_builder(builder, format_string, ..args);

    length := builder_string_length(builder);
    current_substring.count = length - wp.current_builder_length;
    current_substring.occupied = true;
    wp.current_builder_length = length;
    wp.current_substring += 1;
    #if OS == .LINUX {
        // If we send 0 as a value, then read will either block or return EAGAIN,
        // so we're incrementing thread id by one here, and then subtracting it on
        // receiving end.
        val: u64 = tid + 1;
        print("val: %\n", val);
        s := write(logging_efd, *val, size_of(u64));
        if s != size_of(s64) {
            context.logger("Could not trigger proper logging", context.logger_data, current_substring.info);
        }
    }
    // context.logger(s, context.logger_data, info);
} @PrintLike


log_error :: (format_string: string, args: .. Any, loc := #caller_location, flags := Log_Flags.NONE, user_flags : u32 = 0, section : *Log_Section = null) {
    // In case people prefer to say log_error instead of putting a flags argument on the end,
    // we provide this for convenience. Not really sure if it's worth it, but here you go.
    new_flags := flags | .ERROR;
    log(format_string, ..args, loc, new_flags, user_flags, section);
} @PrintLike


handle_logging :: (thread: *Thread) -> s64 {
    #if OS == .WINDOWS {
        // TODO: implement;

    } else #if OS == .LINUX {
        logging_efd = eventfd(0, 0);
        if logging_efd == -1 {
            log_error("Could not start logging thread, error code: %\n", errno());
        }

        while true {
            pfd: [1]pollfd;
            pfd[0].fd = logging_efd;
            pfd[0].events = POLLIN;

            result := poll(pfd.data, xx pfd.count, -1);

            if result < 0 {
                error := errno();
                log_error("Polling on logging file descriptor failed: %\n", error);
            }

            tid: u64;
            s := read(logging_efd, *tid, size_of(u64));
            if s != size_of(u64) {
                error := errno();
                log_error("Something is wrong with reading logging event: %\n", error);
            }
            tid -= 1;

            // Deplete logging queue
            print("Depleting logging queue from thread №: %\n", tid);

            wp := *log_ring.write_positions[tid];
            builder := *log_ring.builders[tid];
            for * wp.substrings {
                if it.occupied {

                    s := builder_to_substring(builder, it);
                    print("%: substring: %\n", it_index, s);
                }
            }
        }
    }
    return 0;
}


builder_to_substring :: (builder: *String_Builder, substring: *Builder_Substring) -> string {
    count := substring.count;
    offset := substring.offset;
    if !count {
        return "";
    }

    result: string = ---;
    // TODO: allocate hwere???
    result.data  = alloc(count);
    result.count = count;

    data := result.data;
    buffer := substring.buffer;
    to_copy := count;
    while buffer && to_copy {
        assert(to_copy >= 0, "FUCK! to_copy is: %\n", to_copy);
        assert(buffer.count > 0, "We got ourselves a race condition! to_copy: % \n", to_copy);

        if to_copy > buffer.count - offset {
            to_copy = buffer.count - offset;
            // This means we fully depleted the buffer, so we can reset its count;
            buffer.count = 0;
        }

        memcpy(data, get_buffer_data(buffer) + offset, to_copy);
        data += to_copy;

        buffer = buffer.next;
        to_copy = count - to_copy;
        offset = 0;
    }

    substring.occupied = false;
    return result;
}

#scope_file

using,except(log, log_error) Basic :: #import "Basic";
#import "Thread";

#if OS == .LINUX {
    #import "POSIX";
}
