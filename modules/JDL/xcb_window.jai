xcb :: #import,file "./xcb.jai";
xkb :: #import,file "./xkbcommon.jai";
#import,file "./xcb_xkb.jai";

Saved_Window_Info :: struct {

}


XCB_Display :: struct {
    #as using base: Base_Display;

    handle: *xcb.xcb_connection_t;
    screen: *xcb.xcb_screen_t;
    file_descriptor: s32;
    pending_event: *xcb.xcb_generic_event_t;

    // atom_names: Table(xcb_atom_t, string);
    atoms: struct {
        INCR: xcb.xcb_atom_t;
        CLIPBOARD: xcb.xcb_atom_t;
        _NET_WM_ICON: xcb.xcb_atom_t;
        _NET_WM_STATE: xcb.xcb_atom_t;
        _NET_WM_STATE_MAXIMIZED_VERT: xcb.xcb_atom_t;
        _NET_WM_STATE_MAXIMIZED_HORZ: xcb.xcb_atom_t;
        _NET_WM_STATE_FULLSCREEN: xcb.xcb_atom_t;
        _NET_WM_NAME: xcb.xcb_atom_t;
        _NET_WM_ICON_NAME: xcb.xcb_atom_t;
        WM_PROTOCOLS: xcb.xcb_atom_t;
        WM_DELETE_WINDOW: xcb.xcb_atom_t;

        UTF8_STRING: xcb.xcb_atom_t;
    }

    xkb_event_base: u8;
    xkb_context: *xkb.xkb_context;
    xkb_keymap: *xkb.xkb_keymap;
    xkb_state: *xkb.xkb_state;

    currently_hovered_window: *XCB_Window;
}


XCB_Window :: struct {
    #as using base: Base_Window;

    handle: xcb.xcb_window_t;
}


toggle_fullscreen :: (win: Window, desire_fullscreen: bool, saved: *Saved_Window_Info) -> success: bool, width: s32, height: s32 {
    return true, 0, 0;
}


xcb_init_display :: (display: *Display) -> bool {
    d := XCB_Display.{ base = display };
    d.base.type = XCB_Display;
    d.base.create_window = xcb_create_window;
    d.base.get_dimensions = xcb_get_dimensions;
    d.base.wait_for_events = xcb_wait_for_events;
    d.base.get_mouse_pointer_position = xcb_get_mouse_pointer_position;
    d.base.update_window_events = xcb_update_window_events;
    
    d.handle = xcb.xcb_connect(null, null);
    con_errors := xcb.xcb_connection_has_error(d.handle);

    if con_errors {
        // TODO: Figure out correct strategy for error handling;
        log_error("Can't connect to X11 with xcb, error code is: %\n", con_errors);
        return false;
    }

    d.file_descriptor = xcb.xcb_get_file_descriptor(d.handle);
    screen := xcb.xcb_setup_roots_iterator(xcb.xcb_get_setup(d.handle)).data;
    d.screen = screen;

    // Intern Atoms
    tis := cast(*Type_Info_Struct) type_of(d.atoms);
    atom_infos: [..] struct {
        cookie: xcb.xcb_intern_atom_cookie_t;
        atom: *xcb.xcb_atom_t;
        name: string;
    };
    array_reserve(*atom_infos, tis.members.count);
    for atom: tis.members {
        create := false;
        if atom.name == "UTF8_STRING"{
            create = true;
        }
        array_add(*atom_infos, .{
            cookie = xcb.xcb_intern_atom(d.handle, xx create, xx atom.name.count, atom.name.data),
            atom = cast(*xcb.xcb_atom_t)(cast(*u8) *d.atoms + atom.offset_in_bytes),
            name = atom.name,
        });
    }

    for info: atom_infos {
        error: *xcb.xcb_generic_error_t;
        reply := xcb.xcb_intern_atom_reply(d.handle, info.cookie, *error);
        if !reply {
            log_error("Failed to intern X11 atom: %", error.*);
            continue;
        }

        info.atom.* = reply.atom;
        c_free(reply);
    }

    // and libxkbcommon
    major: u16 = 1;
    minor: u16 = 0;
    ret := xkb.xkb_x11_setup_xkb_extension(
        d.handle,
        major,
        minor,
        0,
        *major, *minor, *d.xkb_event_base, null,
    );

    if (!ret) {
        log_error("Couldn't setup XKB extension\n");
        return false; 
    }

    d.xkb_context = xkb.xkb_context_new(.NO_FLAGS);

    core_kbd_device_id := xkb.xkb_x11_get_core_keyboard_device_id(d.handle);
    if (core_kbd_device_id == -1) {
        log_error("Couldn't find core keyboard device\n");
        return false;
    } else {
        log("Core keyboard device is %\n", core_kbd_device_id);
    }

    d.xkb_keymap = xkb.xkb_x11_keymap_new_from_device(d.xkb_context, d.handle, core_kbd_device_id, 0);

    d.xkb_state = xkb.xkb_x11_state_new_from_device(d.xkb_keymap, d.handle, core_kbd_device_id);
    if (!d.xkb_state) {
        log_error("Couldn't create xkb state for device\n");
        return false;
    }

    display.xcb = d;
    return true;
}


xcb_create_window :: (display: *Display, window_ret: *Window, width: s32, height: s32, window_name: string, window_x := 0, window_y := 0, parent: *Window = INVALID_WINDOW, background_color_rgb := DEFAULT_WINDOW_CREATION_COLOR) -> bool {
    // assert display.xcb;
    d := *display.xcb;
    screen := d.screen;
    window_ret.base.type = XCB_Window;
    window_ret.base.display = display;
    window_ret.base.get_mouse_pointer_position = xcb_get_mouse_pointer_position;
    window_ret.base.set_window_title = xcb_set_window_title;
    window_ret.base.has_native_handle = xcb_has_native_handle;

    event_mask := xcb.xcb_event_mask_t.EXPOSURE | .STRUCTURE_NOTIFY | .FOCUS_CHANGE | .ENTER_WINDOW | .LEAVE_WINDOW | .KEY_PRESS | .KEY_RELEASE | .BUTTON_PRESS | .BUTTON_RELEASE | .POINTER_MOTION;
    window := xcb.xcb_generate_id(d.handle);
    window_ret.xcb.handle = window;
    prop_mask := xcb.xcb_cw_t.BACK_PIXEL | .EVENT_MASK;
    prop_list := u32.[screen.black_pixel, xx event_mask];

    xcb.xcb_create_window_checked(
        c=d.handle,
        depth=xcb.XCB_COPY_FROM_PARENT,
        wid=window,
        parent=screen.root,
        x=xx window_x, y=xx window_y, width=xx width, height=xx height, border_width=1,
        _class=.XCB_WINDOW_CLASS_INPUT_OUTPUT,
        visual=screen.root_visual,
        value_mask=prop_mask,
        value_list=prop_list.data,
    );

    xcb.xcb_change_property(
        d.handle,
        .REPLACE,
        window,
        d.atoms.WM_PROTOCOLS,
        xx xcb.xcb_atom_enum_t.ATOM, 
        32, 1, *d.atoms.WM_DELETE_WINDOW,
    );

    class_sz := tprint("%\0%\0", ifx window_name then window_name else "jai-application", "hitboxer");
    xcb.xcb_change_property(
        d.handle,
        .REPLACE,
        window,
        xx xcb.xcb_atom_enum_t.WM_CLASS,
        xx xcb.xcb_atom_enum_t.STRING, 
        8, xx class_sz.count, class_sz.data,
    );

    xcb_set_window_title(window_ret, window_name);

    xcb.xcb_map_window(d.handle, window);
    xcb.xcb_flush(d.handle);

    return true;
}

xcb_has_native_handle :: (window: *Window, native_handle: *void) -> bool {
    // xcb_check_usage(null, window);
    return window.xcb.handle == xx native_handle;
}

xcb_get_dimensions :: (window: *Window, right_handed: bool) -> (x: s32, y: s32, width: s32, height: s32, success := true) {
    // xcb.xcb_check_usage(null, window);
    w : *XCB_Window = window;
    cookie := xcb.xcb_get_geometry(w.display.xcb.handle, w.handle);
    geometry := xcb.xcb_get_geometry_reply(w.display.xcb.handle, cookie, null);
    return 0, 0, xx geometry.width, geometry.height, true;
}


xcb_get_mouse_pointer_position :: (display: *Display, right_handed := false) -> x: s32, y: s32, success: bool {
    // xcb_check_usage(display, null);
    d: *XCB_Display = display;

    cookie := xcb.xcb_query_pointer(d.handle, d.screen.root);
    reply  := xcb.xcb_query_pointer_reply(d.handle, cookie, null);
    defer c_free(reply);

    return reply.root_x, reply.root_y, true;
}


xcb_get_mouse_pointer_position :: (window: *Window, right_handed: bool) -> x: s32, y: s32, success: bool {
    // xcb_check_usage(null, window);
    w : *XCB_Window = window;
    d := w.display;

    cookie := xcb.xcb_query_pointer(d.xcb.handle, w.handle);
    reply  := xcb.xcb_query_pointer_reply(d.xcb.handle, cookie, null);
    defer c_free(reply);

    return reply.win_x, reply.win_y, true;
}


xcb_set_window_title :: (window: *Window, title: string) {
    // TODO: Error handling and check usage
    // xcb_check_usage(null, window);
    set_utf8_property(window, xx xcb.xcb_atom_enum_t.WM_NAME, title);
    set_utf8_property(window, xx xcb.xcb_atom_enum_t.WM_ICON_NAME, title);
    set_utf8_property(window, window.xcb.display.xcb.atoms._NET_WM_NAME, title);
    set_utf8_property(window, window.xcb.display.xcb.atoms._NET_WM_ICON_NAME, title);
}


xcb_wait_for_events :: (display: *Display) {
    // xcb_check_usage(null, display);

    d : *XCB_Display = display;
    while true {
        pfd: [1]pollfd;
        pfd[0].fd = d.file_descriptor;
        pfd[0].events = POLLIN;
        // pfd[1].fd = timers_epfd;
        // pfd[1].events = POLLIN;
        // pfd[2].fd = display.base.loop_wakeup_event;
        // pfd[2].events = POLLIN;
        result := poll(pfd.data, xx pfd.count, -1);

        if result < 0 {
            error := errno();
            if error == EINTR continue;
            if error == EINVAL {
                log_error("Can't poll on xcb file descriptor. Max amount of opened file descriptors (RLIMIT_NOFILE) exceeded.");
            } else if error == ENOMEM {
                log_error("poll(2) failed with ENOMEM - it is unable to allocate memory for its internal use");
            } else if error == EFAULT {
                log_error("xcb poll is configured incorrectly - file descriptors are outside of the accessible address space");
            } else {
                log_error("Unknown error happened while waiting on xcb file descriptor. Error code: %", error);
            }
            return;
        }

        // if pfd[2].revents & POLLIN {
        //     consume_loop_wakeup_event(display);
        //     break;
        // }

        // if pfd[1].revents & POLLIN {
        //     timers_tick();
        //     break;
        // }

        if pfd[0].revents & POLLIN {
            assert(d.pending_event == null);
            d.pending_event = xcb.xcb_poll_for_event(d.handle);
            if !d.pending_event {
                xcb.xcb_flush(d.handle);
                continue;
            }
            break;
        }
    }
}


xcb_update_window_events :: (display: *Display) {
    // xcb_check_usage(display, null);

    d: *XCB_Display = display;

    pending_event: *xcb.xcb_generic_event_t;

    if d.pending_event {
        pending_event = d.pending_event;
        d.pending_event = null;
    } else {
        pending_event = xcb.xcb_poll_for_event(d.handle);
    }

    while pending_event != null {
        defer pending_event = xcb.xcb_poll_for_event(d.handle);

        response_type := pending_event.response_type & ~0x80;

        if response_type == d.xkb_event_base {
            ev := cast(*xcb.xcb_generic_event_t) pending_event;
            if ev.pad0 == {
                case XCB_XKB_NEW_KEYBOARD_NOTIFY; #through;
                case XCB_XKB_MAP_NOTIFY; {
                    log("Reloading keyboard map");
                    // ld_xkb_state_init(d, d.handle);

                }
                case XCB_XKB_STATE_NOTIFY; {
                    ev := cast(*xcb_xkb_state_notify_event_t) pending_event;
                    // ld_xkb_state_set_mods(
                    //     xd,
                    //     ev.baseMods, ev.latchedMods, ev.lockedMods,
                    //     xx ev.baseGroup, xx ev.latchedGroup, xx ev.lockedGroup,
                    // );
                }
            }
        } else if response_type == {
            case xcb.XCB_CLIENT_MESSAGE;
                ev := cast(*xcb.xcb_client_message_event_t) pending_event;
                if ev.data.data32[0] == xx d.atoms.WM_DELETE_WINDOW {
                    input_ev: Input.Event;
                    input_ev.type = .QUIT;
                    // array_add(*display.base.events_this_frame, input_ev);
                    array_add(*Input.events_this_frame, input_ev);
                }

            case xcb.XCB_EXPOSE;
                // We could add a new event type to just redraw a window
                xcb.xcb_flush(d.handle);

            case xcb.XCB_CONFIGURE_NOTIFY;
                ev := cast(*xcb.xcb_configure_notify_event_t) pending_event;
                window := get_by_native_handle(display, xx ev.window);
                if window {
                    // Belongs to Input
                    add_resize_record(window, ev.width, ev.height);
                }

            case xcb.XCB_FOCUS_IN;
                Input.input_application_has_focus = true;
                // array_add(*display.base.events_this_frame, .{type=.WINDOW});
                array_add(*Input.events_this_frame, .{type=.WINDOW});

            case xcb.XCB_FOCUS_OUT;
                Input.input_application_has_focus = false;
                // array_add(*display.base.events_this_frame, .{type=.WINDOW});
                array_add(*Input.events_this_frame, .{type=.WINDOW});

            case xcb.XCB_ENTER_NOTIFY;
                ev := cast(*xcb.xcb_enter_notify_event_t) pending_event;
                d.currently_hovered_window = get_by_native_handle(display, xx ev.event);

            case xcb.XCB_LEAVE_NOTIFY;
                d.currently_hovered_window = null;

            case XCB_KEY_PRESS; #through;
            case XCB_KEY_RELEASE;
                ev := cast(*xcb.xcb_key_press_event_t) pending_event;
                // event_type := ifx response_type == XCB_KEY_PRESS then LD_XKB_Key_Event_Type.Press else .Release;
                // ld_xkb_handle_key_event(xd, kpev.detail, event_type, false);

            case XCB_BUTTON_PRESS; #through;
            case XCB_BUTTON_RELEASE; {
                ev := cast(*xcb.xcb_button_press_event_t) pending_event;
                is_pressed : u32 = xx ifx response_type == xcb.XCB_BUTTON_PRESS then 1 else 0;
                input_event: Input.Event;
                input_event.type = .KEYBOARD;
                input_event.key_pressed = is_pressed;
                button := ev.detail;
                print("mouse %: %\n", input_event.key_pressed, button);
                if button == {
                    case 1; input_event.key_code = .MOUSE_BUTTON_LEFT;
                    case 2; input_event.key_code = .MOUSE_BUTTON_MIDDLE;
                    case 3; input_event.key_code = .MOUSE_BUTTON_RIGHT;
                }


                if is_pressed {
                    Input.input_button_states[input_event.key_code] = (Input.Key_Current_State.START | Input.Key_Current_State.DOWN);
                } else {

                    Input.input_button_states[input_event.key_code] = Input.Key_Current_State.END;
                }
                
                array_add(*Input.events_this_frame, input_event);
                // event_type := ifx response_type == XCB_BUTTON_PRESS then Button_Event_Type.Press else .Release;
                // handle_button_event(xd, .Core, bpev.detail, event_type);
            }
            case;
                // log("unhandled xcb event: % %", pending_event.response_type & ~0x80, pending_event.*);
        }
    }
}


set_utf8_property :: (window: *XCB_Window, property: xcb.xcb_atom_t, value: string) {
    d := window.display.xcb;
    xcb.xcb_change_property(
        d.handle,
        .REPLACE,
        window.handle,
        property,
        d.atoms.UTF8_STRING,
        8, xx value.count, value.data);
}


#scope_file

#import "POSIX";

libc :: #system_library "libc";
c_free :: (memory: *void) #foreign libc "free";
