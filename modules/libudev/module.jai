#module_parameters (LOAD_AT_RUNTIME := false);

#if LOAD_AT_RUNTIME {
    #load "./libudev_fp.jai";

    libudev_symbols: Libudev_Symbols;
    using libudev_symbols;
    load_libudev :: (libnames: []string, symbols: ..string) -> success := false {

        should_load := symbols.count;
        for libname: libnames {
            dlerror();

            lib := dlopen(temp_c_string(libname), RTLD_NOW);
            if !lib {
                log_error("Failed to load %: %", libname, to_string(dlerror()));
                return false;
            }

            tis := cast(*Type_Info_Struct) type_info(Libudev_Symbols);
            for m : tis.members {

                if symbols {
                    if should_load == 0 return true;
                    if !array_find(symbols, m.name) continue;
                }

                name := temp_c_string(m.name);
                if m.type.type == .PROCEDURE {
                    if m.flags & .CONSTANT continue;

                    pi := cast(*Type_Info_Procedure) m.type;
                    if !(pi.procedure_flags & .IS_C_CALL) continue;

                    ppfn := cast(*generic_c_call)((cast(*u8) *libudev_symbols) + m.offset_in_bytes);
                    ppfn.* = cast(generic_c_call) dlsym(lib, name);
                    if !ppfn.* {
                        log_error("Failed to resolve function '%' in '%': %", m.name, libname, to_string(dlerror()));
                        continue libname;
                    }
                } else if m.type.type == .POINTER {
                    ppv := cast(**void)((cast(*u8) *libudev_symbols) + m.offset_in_bytes);
                    ppv.* = dlsym(lib, name);
                    if !ppv.* {
                        log_error("Failed to resolve '%' in '%': %", m.name, libname, to_string(dlerror()));
                        continue libname;
                    }
                }
                should_load -= 1;
            }
            return true;
        }
        return false;
    }


    #scope_file
    generic_c_call :: #type () #c_call;
} else {
    #load "./libudev.jai";
}

#scope_module

// udev requires only this one from POSIX, so we just define it here instead of importing
// a huge POSIX module
dev_t :: u64;

#scope_file
#import "Basic";
#import "POSIX";
