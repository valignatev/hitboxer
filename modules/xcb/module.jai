#load "./xcb.jai";
#load "./xcb_xkb.jai";
#load "./xcb_sync.jai";

xcb_xkb: XCB_XKB_Symbols;
xcb_xkb_loaded := false;

xcb_sync: XCB_Sync_Symbols;
xcb_sync_loaded := false;

load_xcb :: () -> bool {
    if !load_procs(
        *xcb_xkb,
        .["libxcb-xkb.so.1", "libxcb-xkb.so" ],
        *xcb_xkb_loaded,
        "xcb_xkb",
    ) {
        return false;
    }

    if !load_procs(
        *xcb_sync,
        .["libxcb-sync.so.1", "libxcb-sync.so" ],
        *xcb_sync_loaded,
        "xcb_sync",
    ) {
        return false;
    }
    return true;
}

#scope_file

// proc_prefix doesn't need leading underscore
load_procs :: (procs: *$T, libnames: []string, loaded: *bool, procs_prefix: string = "") -> success := false {
    name_buffer: [4098]u8;
    if loaded.* return true;

    for libname : libnames {
        dlerror();
        lib := dlopen(temp_c_string(libname), RTLD_NOW);
        if !lib {
            log_error("Failed to load %: %", libname, to_string(dlerror()));
            continue;
        }

        tis := cast(*Type_Info_Struct) type_info(T);
        for m : tis.members {
            dlerror();

            // Add prefix + underscore + actual name + null terminator
            memcpy(name_buffer.data, procs_prefix.data, procs_prefix.count);
            memcpy(name_buffer.data + procs_prefix.count, "_".data, 1); 
            memcpy(name_buffer.data + procs_prefix.count + 1, m.name.data, m.name.count); 
            name_buffer[procs_prefix.count + 1 + m.name.count] = 0;

            if m.type.type == .PROCEDURE {
                if m.flags & .CONSTANT continue;

                pi := cast(*Type_Info_Procedure) m.type;
                if !(pi.procedure_flags & .IS_C_CALL) continue;

                ppfn := cast(*generic_c_call)((cast(*u8) procs) + m.offset_in_bytes);
                ppfn.* = cast(generic_c_call) dlsym(lib, name_buffer.data);
                if !ppfn.* {
                    name := to_string(name_buffer.data);
                    log_error("Failed to resolve function '%' in '%': %", name, libname, to_string(dlerror()));
                    continue libname;
                }
            } else if m.type.type == .POINTER {
                ppv := cast(**void)((cast(*u8) procs) + m.offset_in_bytes);
                ppv.* = dlsym(lib, name_buffer.data);
            }
        }

        log("XCB: loaded %", libname);
        loaded.* = true;
        return true;
    }

    return false;
}

generic_c_call :: #type () #c_call;

#import "Basic";
#import "POSIX";
libc :: #system_library "libc";
c_free :: (memory: *void) #foreign libc "free";
