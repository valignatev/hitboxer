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
        array_reserve(*it.substrings, 20);
    }
    return true;
}

log :: (format_string: string, args: .. Any, loc := #caller_location, flags := Log_Flags.NONE, user_flags : u32 = 0, section : *Log_Section = null) {

    tid := context.thread_index;

    builder := log_ring.builders[tid];
    current_buffer := get_current_buffer(*builder);
    buffer_offset := current_buffer.count;

    wp := *log_ring.write_positions[tid];
    current_substring := *wp.substrings[wp.current_substring];
    current_substring.buffer = current_buffer;
    current_substring.offset = buffer_offset;

    current_substring.info.source_identifier = context.log_source_identifier;
    current_substring.info.location          = loc;
    current_substring.info.common_flags      = flags;
    current_substring.info.user_flags        = user_flags;
    current_substring.info.section           = section;

    // No error recovery from here.
    print_to_builder(*builder, format_string, ..args);

    length := builder_string_length(*builder);
    current_substring.count = length - wp.current_builder_length;
    current_substring.occupied = true;
    wp.current_builder_length = length;
    wp.current_substring += 1;

    // #if OS == .LINUX {
    //     // pseudocode
    //     notify_looger_eventfd();
    // }
    // context.logger(s, context.logger_data, info);
} @PrintLike


log_error :: (format_string: string, args: .. Any, loc := #caller_location, flags := Log_Flags.NONE, user_flags : u32 = 0, section : *Log_Section = null) {
    // In case people prefer to say log_error instead of putting a flags argument on the end,
    // we provide this for convenience. Not really sure if it's worth it, but here you go.
    new_flags := flags | .ERROR;
    log(format_string, ..args, loc, new_flags, user_flags, section);
} @PrintLike


#scope_file

using,except(log, log_error) Basic :: #import "Basic";
