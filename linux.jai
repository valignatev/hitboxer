#load "./uinput.jai";

CURRENT_PLATFORM :: Platform.LINUX;
DEFAULT_WINDOW_CREATION_COLOR :: float.[.15,.15,.2];
DEFAULT_MSAA: s32 : 4;

uinput_fd: s32 = -1;
test_uinput_fd: s32 = -1;
virtual_device_sysname: string;
grab_timer_fd: s32;
grab_timer_test_passed := true;

focused_programs_thread: Thread;
event_handling_thread: Thread;
timers_thread: Thread;

// This might backfire, because this is configurable on Linux
// Might want to allocate it at runtime instead
MAX_PATH_LENGTH :: 4096;
XKB_EVDEV_OFFSET : u32 : 8;

KB_HOOK_SET := false;

// major and minor are straight from Linux kernel
major :: inline (dev: u64) -> u64 {
    return dev >> 8;
}

minor :: inline (dev: u64) -> u64 {
    return dev & 0xff;
}

get_dpi_scale :: (window: Window_Type) -> float {
    // TODO: Implement
    return 1;
}


// TODO: only supports keyboards for now, support other device types when it is time
create_virtual_device :: (name: string, type: Device_Type, key_codes: []u16 = .[]) -> success: bool, fd: s32 {
    fd := open("/dev/uinput", O_RDWR | O_NONBLOCK);

    if fd < 0 {
        code, s := System.get_error_value_and_string();
        // TODO: better error - hint the user at which exactly they need to configure in udev
        error_string := tprint("Could not open \"/dev/uinput\" for creating a virtual device %, error: %\n", name, s);
        error_string = tprint("% Reopen the program with root privileges, or configure required udev rules\n", error_string);
        log_error("%", error_string);
        return false, -1;
    }

    result := ioctl(fd, UI_SET_EVBIT, EV_KEY);
    if result == -1 {
        code, s := System.get_error_value_and_string();
        log_error("Coulnd't initialize virtual device %: %, %\n", name, code, s);
        return false, -1;
    }

    if key_codes {
        for key_codes {
            result := ioctl(fd, UI_SET_KEYBIT, it);
            if result == -1 {
                log_error("Couldn't set keybit on %: %\n", name, it);
            }
        }
    } else {
        // Here I'm just trying to create a virtual keyboard with enough keys to hopefully
        // cover most usecases. It would be more reliable to first accumulate the union of all
        // available keys in open_restricted, and then use those keys here. But this is ok for now.
        // Inclusive intentionally
        for KEY_ESC..cast(u32)KEY_MICMUTE {
            result := ioctl(fd, UI_SET_KEYBIT, it);
            if result == -1 {
                log_error("Couldn't set keybit on %: %\n", name, it);
            }
        }
        for KEY_FN..cast(u32)KEY_FN_RIGHT_SHIFT {
            result := ioctl(fd, UI_SET_KEYBIT, it);
            if result == -1 {
                log_error("Couldn't set keybit on %: %\n", name, it);
            }
        }
    }

    usetup: uinput_setup;
    usetup.id.bustype = BUS_USB;
    usetup.id.vendor = 0x6666;
    usetup.id.product = 0x6665;
    usetup.name = xx name.data;

    result = ioctl(fd, UI_DEV_SETUP, *usetup);
    if result == -1 {
        code, s := System.get_error_value_and_string();
        log_error("Couldn't setup a virtual device %: %, %\n", name, code, s);
        return false, -1;
    }

    // TODO: Should I really call destroy? Seems like Linux destroys my virtual keyboard anyway
    result = ioctl(fd, UI_DEV_CREATE);
    if result == -1 {
        code, s := System.get_error_value_and_string();
        log_error("Couldn't create a virtual device %: %, %\n", name, code, s);
        return false, -1;
    }

    return true, fd;
}

// TODO: Maybe this should just run in the main thread and it's fine.
// TODO: maybe memory leaks - I think I need to free all pointers that xcb returns manually
detect_focused_program :: (thread: *Thread) -> error_code: s64 {
    using current_program_state;
    // @TODO: Might be useful to detect currently focused program at the start.
    // Theoretically, it would always be us, but there's actually a possibility
    // to click on the icon and switch to other program faster than socd starts.
    // For example, when you in a full-screen game, click Windows, press socd shortcut
    // and then quickly switch back to the game within like 500 milliseconds.
    // I haven't been able to pull this off on Linux, but Windows is too slow
    // to attach all needed hooks.
    con := xcb_connect(null, null);
    con_errors := xcb_connection_has_error(con);

    if con_errors {
        log_error("Can't connect to X11 with xcb in order to detect focused windows, error cocde is: %\n", con_errors);
        return con_errors;
    }

    net_active_atom: xcb_atom_t;
    net_name_old_atom: xcb_atom_t;
    active := "_NET_ACTIVE_WINDOW";
    active_cookie := xcb_intern_atom(con, cast(u8)false, cast(u8)active.count, active.data);

    active_error: *xcb_generic_error_t;
    active_reply := xcb_intern_atom_reply(con, active_cookie, *active_error);

    if !active_reply {
        log_error("Can't get _NET_ACTIVE_WINDOW atom, error is: %\n", active_error.*);
        return active_error.error_code;
    }

    net_active_atom = active_reply.atom;
    defer c_free(active_reply);

    screen := xcb_setup_roots_iterator(xcb_get_setup(con)).data;
    root_window := screen.root;

    attrs: xcb_change_window_attributes_value_list_t;
    attrs.event_mask = cast(u32)xcb_event_mask_t.PROPERTY_CHANGE;

    change_cookie := xcb_change_window_attributes_aux_checked(con, root_window, .EVENT_MASK, *attrs);
    change_error := xcb_request_check(con, change_cookie);
    if change_error {
        log_error("Failed to listen to window focus events, error is %\n", change_error.*);
        c_free(change_error);
    }

    xcb_flush(con);

    while true {
        defer reset_temporary_storage();

        event := xcb_wait_for_event(con);
        if !event {
            log_error("I/O error while getting a window focused event");
            break;
        }
        response_type := event.response_type & ~0x80;
        if response_type == XCB_PROPERTY_NOTIFY {
            notify_event := cast(*xcb_property_notify_event_t)event;
            // 0 is NewState, 1 is Deleted. NewState is probably when a window gets focus
            if notify_event.atom == net_active_atom && notify_event.state == 0 {
                // On Sway, I get two focus events for the same window when switching from
                // another X11 window. But I get only one focus event when I switch from
                // Wayland window to X11 window. Weird, on pure X11 this doesn't happen.

                // TODO: Grabbing the server is kinda expensive and disruptive. And the only upside is that
                // it guarantees that the window that is focused won't get unfocused or destroyed
                // while we're fetching its options, which isn't a hard requirements for us.
                // So maybe we don't need to grab the server and just handle the situation where we get bogus
                // properties instead. Most likely, we'll get xcb_window_error_t
                xcb_grab_server(con);
                input_focus_reply := xcb_get_input_focus_reply(con, xcb_get_input_focus(con), null);
                focused_window := input_focus_reply.focus;

                name := get_x11_window_name(focused_window);
                log("Name: %\n", name);
                xcb_ungrab_server(con);
                xcb_flush(con);
                // TODO: Better way to handle the title name, contains is probably not very
                // robust. Also it's case-sensitive for now :(
                hook_is_set_by_profile := false;
                for profile: profiles {
                    if contains(profile.program, name) {
                        active_profile = *profile;
                        set_kb_hook();
                        hook_is_set_by_profile = true;
                        break;
                    }
                }
                if !hook_is_set_by_profile {
                    // This is likely a pointer on a stack, I have no idea how it worked,
                    // Because on Linux it literally dies lmao
                    global_profile := profiles[0];
                    if global_profile.mappings_array.count > 0 {
                        active_profile = *global_profile;
                        set_kb_hook();
                        continue;
                    }
                } else {
                    continue;
                }

                unset_kb_hook();
            }
        }
    }

    return 0;
}

_opened_programs: [..]string;

get_x11_window_name :: (window: u32) -> string {
    result: string;

    xd := *JDL.main_display.xcb;
    con := xd.handle;
    name_error: *xcb_generic_error_t;
    name_old_error: *xcb_generic_error_t;

    // Some programs don't comply with EWMH and set old WM_NAME instead, try to get it as well
    name_cookie := xcb_get_property(con, 0, window, xd.atoms._NET_WM_NAME, xx xcb_get_property_type_t.XCB_GET_PROPERTY_TYPE_ANY, 0, U32_MAX);
    name_old_cookie := xcb_get_property(con, 0, window, xx xcb_atom_enum_t.WM_NAME, xx xcb_atom_enum_t.STRING, 0, U32_MAX);

    name_reply := xcb_get_property_reply(con, name_cookie, *name_error);
    name_old_reply := xcb_get_property_reply(con, name_old_cookie, *name_old_error);

    defer {
        c_free(name_reply);
        c_free(name_old_reply);
    }

    // On Sway, I get no reply when the X11 window loses focus and it switches
    // to a Wayland-native application. So I let it be...
    if !name_reply && !name_old_reply {
        // Maybe socd unhook logic here
        xcb_ungrab_server(con);
        xcb_flush(con);
        return "";
    }

    name_len := xcb_get_property_value_length(name_reply);
    name_old_len := xcb_get_property_value_length(name_old_reply);
    if !name_len {
        result.count = name_old_len;
        result.data = xcb_get_property_value(name_old_reply);
    } else {
        result.count = name_len;
        result.data = xcb_get_property_value(name_reply);
    }

    return result;
}

get_list_of_programs :: () -> []string {
    using current_program_state;
    con := JDL.main_display.xcb.handle;
    result := _opened_programs;

    screen := xcb_setup_roots_iterator(xcb_get_setup(con)).data;
    root_window := screen.root;

    tree_cookie := xcb_query_tree(con, root_window);
    tree_reply := xcb_query_tree_reply(con, tree_cookie, null);

    if (tree_reply) {
        children_data := xcb_query_tree_children(tree_reply);
        children_count := xcb_query_tree_children_length(tree_reply);

        children: []u32;
        children.data = children_data;
        children.count = children_count;

        for children {

            attrs_error: *xcb_generic_error_t;
            attrs_cookie := xcb_get_window_attributes(con, it);
            attrs_reply := xcb_get_window_attributes_reply(con, attrs_cookie, *attrs_error);

            registered_events := attrs_reply.all_event_masks;
            if registered_events & (.KEY_PRESS | .KEY_RELEASE | .BUTTON_PRESS | .BUTTON_RELEASE | .EXPOSURE | .VISIBILITY_CHANGE | .FOCUS_CHANGE) == 0 {
                continue;
            }

            defer c_free(attrs_reply);

            name := get_x11_window_name(it);
            if name.count > 0 {
                name_lower := to_lower_copy(name,, temp);
                search_lower := to_lower_copy(active_search.text,, temp);
                if (active_search.text.count && contains(name_lower, search_lower)) || !active_search.text.count array_add(*result, copy_string(name));
            }
        }
    }

    return result;
}

set_kb_hook :: () {
    KB_HOOK_SET = true;
    return;
}

unset_kb_hook :: () {
    KB_HOOK_SET = false;
    return;
}

Device :: struct {
    event_file: string;
    name: string;
    file_descriptor: s32;
}


// This is basically test_bit from linux kernel:
// https://github.com/torvalds/linux/blob/master/tools/testing/selftests/iommu/iommufd_utils.h#L34
// Every key code is encoded as a single positional bit in the key_bits returned by EVIOCGBIT,
// This is why we need KEY_MAX amount of bits, or (KEY_MAX / 8) + 1 amount of bytes.
// At least on desktop Linux this is 96.
test_key :: (key: u32) -> u32 #expand {
    return `key_bits[key/8] & (xx 1 << (key % 8));
}

File_Descriptors :: struct {
    counter: s32;
    array: [256]s32;
}

opened_file_descriptors_for_candidates: File_Descriptors;

close_descriptors :: (raw_descriptors: *void) -> *void #c_call {
    push_context {
        descriptors := cast(*File_Descriptors)raw_descriptors;
        for descriptors.array {
            if !it break;
            error := close(it);
            if error {
                code, s := System.get_error_value_and_string();
                log_error("Closing file descriptor '%' failed: code %, '%'.\n", it, code, s);
            } else {
                descriptors.array[it_index] = 0;
            }
        }
    }
    return null;
}

free_candidates :: (candidates: *[..]Device) {
    array_free(candidates.*);
    tid: pthread_t ;
    pthread_create(*tid, null, close_descriptors, *opened_file_descriptors_for_candidates);
}

read_entire_proc_info :: () -> [..]u8 {
    data: [..] u8;
    buff: [4096] u8;
    fd := open("/proc/bus/input/devices", O_RDONLY);
    if fd < 0 {
        log_error("Failed to open '/proc/bus/input/devices': %\n", errno());
        return data;
    }
    defer close(fd);

    while true {
        rs := read(fd, buff.data, buff.count);
        if rs < 0 {
            log_error("Failed to read data from '/proc/bus/input/devices': %\n", errno());
            return data;
        }
        if !rs break;
        array_reserve(*data, data.count + rs);
        memcpy(data.data + data.count, buff.data, rs);
        data.count += rs;
    }
    return data;
}

is_our_virtual_keyboard :: (path: string) -> bool {
    devices_raw := read_entire_proc_info();
    defer array_free(devices_raw);
    devices_str : string = xx devices_raw;

    // This should never fail
    _, _, target_event := split_from_right(path, "/");

    devices := split(devices_str, "\n\n");
    get_handlers := false;
    for devices {
        device_props := split(it, "\n");
        for prop: device_props {
            if prop == "N: Name=\"Hitboxer keyboard\"" {
                get_handlers = true;
            }
            if get_handlers && begins_with(prop, "H: Handlers=") {
                handlers := split(slice(prop, 12, prop.count), " ");
                // TODO: dynamic allocation
                defer array_free(handlers);

                result := array_find(handlers, target_event);
                return result;
            }
        }
    }
    return false;
}

start_logging_keys_in_a_thread :: (thread: *Thread) -> s64 {
    fd := libinput_get_fd(libinput);
    // TODO: apparently, libinput doesn't handle gamepads. So I need to open and add them to
    // this descriptor set myself. Sadge.
    fds := pollfd.{
        fd,
        POLLIN,
        0
    };
    while true {
        // TODO: restructure global keyboard handling in a way that it does not need to allocate anything at all,
        // and hence does not need to reset temp storage.
        defer reset_temporary_storage();
        poll_result := poll(*fds, 1, -1);
        if poll_result <= 0 {
            log_error("libinput is cooked: % (ERROR REASON HERE)\n", errno());
            continue;
        }

        libinput_dispatch(libinput);
        while event := libinput_get_event(libinput) {

            event_type := libinput_event_get_type(event);
            handle_libinput_event(event, uinput_fd);
            libinput_event_destroy(event);
        }
    }

    return 0;
}

handle_libinput_event :: (event: *libinput_event, uinput_fd: s32) {
    // NOTE: It doesn't look like libinput passes us SYN events from the queue, so we have to
    // recreate it manually. it doesn't pass those HID events either. I wonder if it's fine to
    // just ignore them anyway?

    key_bits_num :: (KEY_MAX / 8) + 1;
    key_bits: [key_bits_num]u8;
    output_events: [2]input_event;
    input_events: [2]input_event;
    write_original := true;

    event_type := libinput_event_get_type(event);
    device := libinput_event_get_device(event);
    device_sysname := to_string(libinput_device_get_sysname(device));

    if event_type == .LIBINPUT_EVENT_POINTER_BUTTON {
        pointer_event := libinput_event_get_pointer_event(event);
    }
    else if event_type == .LIBINPUT_EVENT_DEVICE_REMOVED {
        if device_sysname == virtual_device_sysname {
            uinput_device_created = false;
            log("hitboxer virtual device was removed\n");
            // TODO: ungrab everything here and maybe shutdown idk.
        }
    }
    else if event_type == .LIBINPUT_EVENT_KEYBOARD_KEY {
        keyboard_event := libinput_event_get_keyboard_event(event);
        key := libinput_event_keyboard_get_key(keyboard_event);
        state := libinput_event_keyboard_get_key_state(keyboard_event);
        // I want it to be at the very end so that this check does not delay
        // actual input handling. This is a super-tiny-micro-nano optimization.
        defer if key == 0x70 {
            grab_timer_test_passed = true;
        }

        // Reconstruct input_event from libinput_event.
        input_events[0] = input_event.{
            time=.{},
            type=EV_KEY,
            code=cast(u16)key,
            value=xx state,
        };
        input_events[1] = input_event.{
            time=.{},
            type=EV_SYN,
            code=SYN_REPORT,
            value=0,
        };
        ev := input_events[0];
        if state == .LIBINPUT_KEY_STATE_PRESSED {
            print("% pressed\n", get_key_name(key));
        }

        // Pass the real event into our virtual device.
        defer if write_original {

            written := write(uinput_fd, input_events.data, size_of(input_event) * output_events.count);
            if written < 0 {
                log_error("Could not pass the event on\n");
            } else {
                // If we successfully wrote to an input fd, consider that we are alive unconditionally.
                // TODO: Is there a way to test that our virtual device is not grabbed?
                grab_timer_test_passed = true;
            }

            // TODO: This should not be in an input handler. This shoudl be in some other place that
            //  is maybe on another thread (like, logger), that logs pressed keys in debug mode.
            // We're updating xkb state here for handling Numlock correctly, but we don't
            // even take advantage of that, because numpad keys are specialcased in get_key_name anyway
            // So maybe we don't even need to update the state at all. At least until we have a proper
            // keyboard layouts/localization support.
            xkb_keycode: xkb_keycode_t = XKB_EVDEV_OFFSET + key;
            xkb_state_update_key(JDL.main_display.base.xkb_state.kb_state, xkb_keycode, xx state);
        }

        if key == KEY_NUMLOCK return;

        using current_program_state;
        if current_program_state.active_state == .SETTING_SOURCE || current_program_state.active_state == .SETTING_DESTINATION {
            next_state := Mapping_State.NOTHING;
            if ev.value == IS_DOWN && ev.type == EV_KEY {
                if active_state == .SETTING_SOURCE {
                    print("mappings before:\n");
                    for active_profile_in_ui.mappings {
                        dest_formatted := tprint("mode: %, kind: %, code: %", it.mode, it.kind, get_key_name(it.code));
                        print("source: %, dest: %\n", get_key_name(it_index), dest_formatted);
                    }

                    old_source_code := active_mapping.source.code;
                    if old_source_code == KEY_RESERVED next_state = .SETTING_DESTINATION;

                    found, old_binding_from_old_source := table_find_new(*active_profile_in_ui.mappings, old_source_code);
                    print("Old source is %\n", old_binding_from_old_source);

                    active_mapping.*.source.code = ev.code;
                    table_set(*active_profile_in_ui.mappings, active_mapping.source.code, active_mapping.destination);

                    if active_mapping.mode == .OPPOSITE || active_mapping.mode == .NEUTRAL {
                        table_remove(*active_profile_in_ui.mappings, active_mapping.destination.code);
                        table_set(*active_profile_in_ui.mappings, active_mapping.destination.code, active_mapping.source);
                    }
                    // I don't think it matters whether we found it.
                    table_remove(*active_profile_in_ui.mappings, old_source_code);

                    print("mappings after:\n");
                    for active_profile_in_ui.mappings {
                        dest_formatted := tprint("mode: %, kind: %, code: %", it.mode, it.kind, get_key_name(it.code));
                        print("source: %, dest: %\n", get_key_name(it_index), dest_formatted);
                    }

                    log("Set source %\n", ev.code);
                } else if active_state == .SETTING_DESTINATION {
                    next_state = .NOTHING;
                    old_destination_code := active_mapping.destination.code;
                    active_mapping.*.destination.code = ev.code;

                    table_set(*active_profile_in_ui.mappings, active_mapping.source.code, active_mapping.destination);
                    if active_mapping.mode == .OPPOSITE || active_mapping.mode == .NEUTRAL {
                        table_remove(*active_profile_in_ui.mappings, old_destination_code);
                        table_set(*active_profile_in_ui.mappings, active_mapping.destination.code, active_mapping.source);
                    }
                    log("Set destination %\n", ev.code);
                }

                if next_state == .NOTHING {
                    finalize_state();
                } else {
                    active_state = next_state;
                }
            }
            return;
        }

        if !KB_HOOK_SET {
            return;
        }

        // NOTE: We're counting on the correct mode being set on the destination keybind
        // in the hash table. At least for now
        bind := get_key_mapping(ev.code);
        if bind == dummy_bind {
            return;
        }

        if bind.mode == .REMAP {
            write_original = false;
            bind_name := get_key_name(bind.code);
            log("Found mapping: %\n", bind_name);
            output_events[0] = input_event.{
                type=EV_KEY,
                code=cast(u16)bind.code,
                value=ev.value,
            };
            output_events[1] = input_event.{
                type=EV_SYN,
                code=SYN_REPORT,
                value=0,
            };

            written := write(uinput_fd, output_events.data, size_of(input_event) * output_events.count);
            if written < 0 {
                log_error("Could not write one to one mapping for %\n", bind_name);
            }
            return;
        }

        if bind.mode == .OPPOSITE || bind.mode == .NEUTRAL {
            opposing_code := bind.code;

            found, device_fd := table_find_new(*libinput_opened_devices, device_sysname);
            if !found {
                log_error("Can't get an open file descriptor for %\n", device_sysname);
                return;
            }
            key_bit_result := ioctl(device_fd, EVIOCGKEY(key_bits.count), *key_bits);
            if key_bit_result < key_bits_num {
                log_error("Can't read the device key state\n");
                return;
            }
            if ev.value == 1 {
                if test_key(opposing_code) {
                    if bind.mode == .NEUTRAL {
                        write_original = false;
                    }
                    output_events[0] = input_event.{
                        type=EV_KEY,
                        code=cast(u16)opposing_code,
                        value=IS_UP,
                    };
                    output_events[1] = input_event.{
                        type=EV_SYN,
                        code=SYN_REPORT,
                        value=0,
                    };

                    written := write(uinput_fd, output_events.data, size_of(input_event) * output_events.count);
                    if written < 0 {
                        log_error("Could not release the key\n");
                    }
                }
            } else if ev.value == 0 {
                if test_key(opposing_code) {
                    output_events[0] = input_event.{
                        time=.{},
                        type=EV_KEY,
                        code=cast(u16)opposing_code,
                        value=IS_DOWN,
                    };
                    output_events[1] = input_event.{
                        time=.{},
                        type=EV_SYN,
                        code=SYN_REPORT,
                        value=0,
                    };
                    written := write(uinput_fd, output_events.data, size_of(input_event) * output_events.count);
                    if written < 0 {
                        log_error("Could not repress the key\n");
                    }
                }
            }
        }
    }
}

handle_timers :: (thread: *Thread) -> s64 {
    // If our input handling code cucked itself into a total system hardlock
    // where we are grabbing all of the keyboard but not passing any of input
    // further down, we need some kind of a safety net to ungrab devices if
    // this happens. This logic implements a separate thread and a timer that
    // sends a special secret keyboard code to a separate virtual keyboard,
    // and then checks if this code got received and acknowledged. If we
    // don't see it happening, we just ungrab everything we grabbed previously.
    pfd: [1]pollfd;
    pfd[0].fd = grab_timer_fd;
    pfd[0].events = POLLIN;

    control_events: [4]input_event;
    control_events[0] = input_event.{
        time=.{},
        type=EV_KEY,
        code=cast(u16)0x70,
        value=xx 1,
    };
    control_events[1] = input_event.{
        time=.{},
        type=EV_SYN,
        code=SYN_REPORT,
        value=0,
    };
    control_events[2] = input_event.{
        time=.{},
        type=EV_KEY,
        code=cast(u16)0x70,
        value=xx 0,
    };
    control_events[3] = input_event.{
        time=.{},
        type=EV_SYN,
        code=SYN_REPORT,
        value=0,
    };
    while true {
        poll(pfd.data, xx pfd.count, -1);

        if pfd[0].revents & POLLIN {
            // Handle Ungrabs in case our input handler gets stuck or something else
            value: s64;
            read(grab_timer_fd, *value, 8);

            if grab_timer_test_passed {
                grab_timer_test_passed = false;
                written := write(test_uinput_fd, control_events.data, size_of(input_event) * control_events.count);
                if written < 0 {
                    log_error("Could not send control events\n");
                }

                continue;
            } else {
                // TODO: This will try to ungrab every healthcheck cycle, I should probably only do it once.
                //  like, change grab_timer_test_passed to a three-way enum.
                log_error(S(
                    "Our input handler did not pass a healthcheck and likely hardlocked ",
                    "you for few seconds, so we recovered from this disaster.\n",
                    "Please submit an issue to Github with relevant log.txt parts attached. ",
                    "Sorry for the inconvenience!\n",
                ));
                for fd, sysname: libinput_opened_devices {
                    ungrab_result := ioctl(fd, EVIOCGRAB, 0);
                    if ungrab_result < 0 {
                        log_error("Could not ungrab %\n", sysname);
                    }
                }
            }
        }
    }
    return 0;
}

start_logging_keys :: () {
    event_handling_thread.starting_context.logger = my_logger;
    thread_init(*event_handling_thread, start_logging_keys_in_a_thread);
    thread_start(*event_handling_thread);
}

start_detecting_focused_program :: () {
    focused_programs_thread.starting_context.logger = my_logger;
    thread_init(*focused_programs_thread, detect_focused_program);
    thread_start(*focused_programs_thread);
}

unset_mapping_setting_hook :: () {
    // @TODO: Implement
    return;
}


set_key_mapping_hook :: (window: Window_Type) {
    // It does nothing for now, because logging loop handles that.
    return;
}

get_key_name :: (key_scan_code: u32) -> string {
    if key_scan_code == KEY_RESERVED return "...";
    cached := KEY_NAMES[key_scan_code];
    if cached return cached;

    // Special case for Escape - because libxkbcommon has ^[ for it as utf8 representation lol.
    if key_scan_code == {
        case KEY_ESC;
            KEY_NAMES[KEY_ESC] = "Esc";
            return "Esc";
        case KEY_BACKSPACE;
            KEY_NAMES[KEY_BACKSPACE] = "Backspace";
            return "Backspace";
        case KEY_DELETE;
            KEY_NAMES[KEY_DELETE] = "Del";
            return "Del";
        case KEY_PAGEUP;
            KEY_NAMES[KEY_PAGEUP] = "PgUp";
            return "PgUp";
        case KEY_PAGEDOWN;
            KEY_NAMES[KEY_PAGEDOWN] = "PgDown";
            return "PgDown";
        case KEY_KP0; return "Num 0";
        case KEY_KP1; return "Num 1";
        case KEY_KP2; return "Num 2";
        case KEY_KP3; return "Num 3";
        case KEY_KP4; return "Num 4";
        case KEY_KP5; return "Num 5";
        case KEY_KP6; return "Num 6";
        case KEY_KP7; return "Num 7";
        case KEY_KP8; return "Num 8";
        case KEY_KP9; return "Num 9";
        case KEY_KPMINUS; return "Num -";
        case KEY_KPPLUS; return "Num +";
        case KEY_KPDOT; return "NUM .";
        case KEY_KPENTER; return "Num Ent";
    }

    key_name: string;

    xkb_keycode: xkb_keycode_t = XKB_EVDEV_OFFSET + key_scan_code;
    keysym := xkb_state_key_get_one_sym(JDL.main_display.xcb.xkb_state.kb_state, xkb_keycode);
    // This doesn't do anything for some reason
    keysym = xkb_keysym_to_upper(keysym);

    // First is a dummy call just to get a length of the string
    length := xkb_state_key_get_utf8(JDL.main_display.xcb.xkb_state.kb_state, xkb_keycode, null, 0);
    if length {
        // Allocate one more for that sweet null terminator. We'll subtract the count later
        key_name = alloc_string(length + 1);
        xkb_state_key_get_utf8(JDL.main_display.xcb.xkb_state.kb_state, xkb_keycode, key_name.data, xx (key_name.count));

    // If the key doesn't have utf8 representation in libxkbcommon (or it's a whitespace character) - get its keysym name instead.
    }
    // -1 to account for trailing null character
    if !length || !(trim(key_name).count - 1) {
        length := xkb_keysym_get_name(keysym, null, 0);
        key_name = alloc_string(length + 1);
        xkb_keysym_get_name(keysym, key_name.data, xx key_name.count);
    }

    key_name.count -= 1;

    // Capitalizing the key_name
    dummy := key_name;
    dummy.count = 1;
    // This only supports English letters
    to_upper_in_place(dummy);

    KEY_NAMES[key_scan_code] = key_name;
    return key_name;
}

udev: *udev_context;
libinput: *libinput_context;

// Straight up copypaste of keyboard detector
is_keyboard :: (device_fd: s32, device_path: string) -> bool {
    if device_fd < 0 {
        log_error("Couldn't open device % for checking out whether it's a keyboard\n", device_path);
        return false;
    }

    name: [256]u8;
    device_name: string;
    evbit: u32;

    name_length := ioctl(device_fd, EVIOCGNAME(name.count), *name);
    if name_length < 0 {
        log_error("Couldn't get device name: %\n", device_path);
    } else {
        device_name = alloc_string(name_length - 1);
        copy(device_name.data, name.data, device_name.count);
    }

    evbit_result := ioctl(device_fd, EVIOCGBIT(0, size_of(type_of(evbit))), *evbit);

    if !(evbit & (1 << EV_KEY)) {
        return false;
    }

    key_bits_num :: (KEY_MAX / 8) + 1;
    key_bits: [key_bits_num]u8;
    keys_ioctl_result := ioctl(device_fd, EVIOCGBIT(EV_KEY, key_bits.count), *key_bits);
    if keys_ioctl_result != key_bits_num {
        log_error("Something is wrong with reading key bits from device %, ioctl result is %, skipping it...\n", device_name, keys_ioctl_result);
        return false;
    }

    // TODO: Maybe extract these two ranges as keyboard ranges so they're reused here and when
    // creating a virtual keyboard.
    for KEY_ESC..cast(u32)KEY_MICMUTE {
        if test_key(it) return true;
    }
    for KEY_FN..cast(u32)KEY_FN_RIGHT_SHIFT {
        if test_key(it) return true;
    }
    return false;
}

platform_hide_to_tray :: (window: Window_Type) {

}

// This is a table of "eventFOO" (obtained from libinput_device_get_sysname) to an opened file descriptor
libinput_opened_devices: Table(string, s32);
uinput_device_created := false;

// TODO: memory leak because of temp allocations from #c_call
// TODO: path_raw gets allocated by udev, and it keeps the memory if I return an fd from
//  this function. If I return -1, path_raw gets deallocated internally. So adding paths of devices
//  that I grab to hash table works and is safe, but it is quite sketchy, and I'm not sure if this is a
//  guaranteed behavior. I need to have some kind of custom string arena where I can hold these device paths
//  on my own and do not depend on this indirection.
open_restricted :: (path_raw: *u8, flags: s32, user_data: *void) -> s32 #c_call {

    push_my_context();
    path := to_string(path_raw);
    path_split := split(path, "/");
    sysname := path_split[path_split.count-1];

    // open_restricted could get called twice for the same device - first normally, when libinput initializes,
    // and another time, when device capabilities change. For example, when we add/remove keys from our virtual
    // device. So this little condition should be re-entrant, otherwise we have a chance of grabbing our virtual
    // device below and lock the user from using their real devices, which is not good!
    if is_our_virtual_keyboard(path) {
        uinput_device_created = true;
        // TODO: Don't use default allocator
        // TODO: potential leak if virtual device path changes for whatever reason.
        if virtual_device_sysname != path {
            virtual_device_sysname = copy_string(sysname);
        }

        return -1;
    }

    fd := open(path_raw, flags);
    if fd == -1 {
        // TODO: input group error message
    }

    if is_keyboard(fd, path) && uinput_fd > 0 {
        table_add(*libinput_opened_devices, sysname, fd);
        log("Grabbing % to pass its input through Hitboxer virtual keyboard\n", path);
        grab_result := ioctl(fd, EVIOCGRAB, 1);
        if grab_result < 0 {
            log_error("Could not grab % for controlling its inputs\n", path);
        }
        return fd;
    }

    // TODO: port device closing shenanigans that offload it into a separate thread.
    close(fd);
    return -1;
}

close_restricted :: (fd: s32, user_data: *void) #c_call {
    close(fd);
}

interface_: libinput_interface = .{open_restricted, close_restricted};

platform_init :: () -> success: bool, init_reason: string {
    libinput_loaded := load_libinput(
        libnames=.["libinput.so", "libinput.so.10", "libinput.so.10.13.0"],
        symbols=...[
            "libinput_event_get_type",
            "libinput_get_fd",
            "libinput_udev_create_context",
            "libinput_udev_assign_seat",
            "libinput_dispatch",
            "libinput_get_event",
            "libinput_event_get_type",
            "libinput_event_destroy",
            "libinput_event_get_device",
            "libinput_device_get_sysname",
            "libinput_event_get_pointer_event",
            "libinput_event_get_keyboard_event",
            "libinput_event_keyboard_get_key",
            "libinput_event_keyboard_get_key_state",
        ],
    );
    if !libinput_loaded {
        return false, "Could not load libinput\n";
    }

    libudev_loaded := load_libudev(
        libnames=.["libudev.so", "libudev.so.1", "libudev.so.1.7.10"],
        symbols=...["udev_new"],
    );
    // Virtual devices stuff
    {
        success:, uinput_fd = create_virtual_device("Hitboxer keyboard", .KEYBOARD);
        if !success {
            return false, "Could not create a virtual keyboard, nothing will work\n";
        }

        // Test keyboard to check if we are cooked
        success, test_uinput_fd = create_virtual_device("Hitboxer healthcheck device", .KEYBOARD, .[0x70]);
    }

    // Timers stuff
    {
        grab_timer_fd = timerfd_create(xx clockid_t.CLOCK_MONOTONIC, 0);
        if grab_timer_fd == -1 {
            // TODO: errno
            log_error("Could not create an ungrab timer. You might be in danger!\n");
        } else {
            timer_spec: itimerspec;
            timer_spec.it_value = .{tv_sec=5};
            timer_spec.it_interval = .{tv_sec=5};

            result := timerfd_settime(
                __ufd=grab_timer_fd,
                __flags=0,
                __utmr=*timer_spec,
                __otmr=null,
            );

            if result == -1 {
                // TODO: errno
                log_error("Could not start an ungrab timer. You might be in danger!\n");
            } else {
                timers_thread.starting_context.logger = my_logger;
                thread_init(*timers_thread, handle_timers);
                thread_start(*timers_thread);
            }
        }
    }

    // TODO: This should be in a separate thread, it affects startup times GREATLY!!!!
    // udev and libinput
    {
        udev = udev_new();
        if !udev_context {
            return false, "Couldn't initialize udev context\n";
        }

        libinput = libinput_udev_create_context(*interface_, null, udev);
        if !libinput {
            return false, "Couldn't initialize libinput context\n";
        }

        // NOTE: Is there any issue with hardcoding a single seat here?
        // Are setups where input devices are spread across multiple seats even exit?
        if libinput_udev_assign_seat(libinput, "seat0") == -1 {
            return false, "Libinput couldn't assign seat\n";
        }
    }

    return true, "";
}

platform_after_window_created :: (window: Window_Type) -> bool {
    return true;
}

platform_deinit :: (window: Window_Type) {
    // If I don't destroy the virtual keyboard manually, I get stuck inputs when the program quits.
    ioctl(uinput_fd, UI_DEV_DESTROY);
    close(uinput_fd);
}

platform_wake_up_main_thread :: () {
    //
}

platform_wait_for_message :: inline () -> need_to_rerender: bool {
    JDL.wait_for_events();
    return true;
}

libc :: #library,system "libc";
c_free :: (memory: *void) #foreign libc "free";
sendfile :: (out_fd: s32, in_fd: s32, offset: *s64, count: u64) -> s64 #foreign libc;

#import "Memory";
#import "POSIX";
#import "Sort";
#import "String";
using JDL :: #import "JDL";
#import "xcb";
#import "libxkbcommon";
#import "Input";
#import "Thread";
#import "Helpers";
#import "libinput"(LOAD_AT_RUNTIME=true, LOAD_LIBUDEV_AT_RUNTIME=true);
#import "libudev"(LOAD_AT_RUNTIME=true);
