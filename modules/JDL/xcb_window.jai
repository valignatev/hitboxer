#import "xcb";
#import "libxkbcommon";

#load "./x11.jai";

Saved_Window_Info :: struct {

}


XCB_Display :: struct {
    #as using base: Base_Display;

    handle: *xcb_connection_t;
    screen: *xcb_screen_t;
    file_descriptor: s32;
    max_request_length: s64;
    pending_event: *xcb_generic_event_t;

    atom_names: Table(xcb_atom_t, string);
    atoms: struct {
        INCR: xcb_atom_t;
        CLIPBOARD: xcb_atom_t;
        TARGETS: xcb_atom_t;                         @create
        _NET_WM_ICON: xcb_atom_t;
        _NET_WM_STATE: xcb_atom_t;
        _NET_WM_STATE_MAXIMIZED_VERT: xcb_atom_t;
        _NET_WM_STATE_MAXIMIZED_HORZ: xcb_atom_t;
        _NET_WM_STATE_FULLSCREEN: xcb_atom_t;
        _NET_WM_NAME: xcb_atom_t;
        _NET_WM_ICON_NAME: xcb_atom_t;
        _NET_WM_SYNC_REQUEST: xcb_atom_t;
        _NET_WM_SYNC_REQUEST_COUNTER: xcb_atom_t;
        WM_PROTOCOLS: xcb_atom_t;
        WM_DELETE_WINDOW: xcb_atom_t;
        JDL_CLIPBOARD_DATA: xcb_atom_t;              @create

        UTF8_STRING: xcb_atom_t;                     @create
    }

    currently_hovered_window: *XCB_Window;

    sync_info: struct {
        present: bool;
        major: u16;
        minor: u16;
    }

    clipboard: struct {
        // This is a window that owns clipboard property so that we don't have to transfer it around
        // when some other window that holds it otherwise getting closed/destroyed. It just makes things easier
        // to have a dedicated invisible window to own clipboard data for us.
        window: xcb_window_t;
        blocking_tranfser_ongoing: bool;
        // window: xcb_window_t;
        incoming_data: string;        // from the outside to us
        large_incoming_tranfer: bool; // incoming data is slip over multiple PropertyNotify events
        incoming_in_flight_data: String_Builder;  // buffer for incoming data from multiple PropertyNotify events

        outgoing_data: string;   // from us to the outside
    }

    cursors: Table(string, xcb_cursor_t);
}


XCB_Window :: struct {
    #as using base: Base_Window;

    handle: xcb_window_t;

    sync: Sync_State;
}


toggle_fullscreen :: (win: Window, desire_fullscreen: bool, saved: *Saved_Window_Info) -> success: bool, width: s32, height: s32 {
    return true, 0, 0;
}


xcb_init_display :: (display: *Display) -> bool {
    if !load_xcb() return false;
    if !xkbcommon_load(init_xcb_compat=true) return false;

    d := XCB_Display.{ base = display };
    d.base.type = XCB_Display;
    d.base.create_window = create_window;
    d.base.get_dimensions = xcb_get_dimensions;
    d.base.wait_for_events = xcb_wait_for_events;
    d.base.get_mouse_pointer_position = xcb_get_mouse_pointer_position;
    d.base.update_window_events = xcb_update_window_events;
    d.base.translate_key_code  = x11_translate_key_code;
    d.base.clipboard_get_text = xcb_clipboard_get_text;
    d.base.clipboard_set_text = xcb_clipboard_set_text;

    d.handle = xcb_connect(null, null);
    con_errors := xcb_connection_has_error(d.handle);

    if con_errors {
        // TODO: Figure out correct strategy for error handling;
        log_error("Can't connect to X11 with xcb, error code is: %\n", con_errors);
        return false;
    }

    d.file_descriptor = xcb_get_file_descriptor(d.handle);
    screen := xcb_setup_roots_iterator(xcb_get_setup(d.handle)).data;
    d.screen = screen;

    d.max_request_length = xcb_get_maximum_request_length(d.handle);
    log("XCB: max_request_length=%", d.max_request_length);

    // Intern Atoms
    tis := cast(*Type_Info_Struct) type_of(d.atoms);
    atom_infos: [..] struct {
        cookie: xcb_intern_atom_cookie_t;
        atom: *xcb_atom_t;
        name: string;
    };
    array_reserve(*atom_infos, tis.members.count);
    for atom: tis.members {
        should_create, _ := array_find(atom.notes, "create");
        array_add(*atom_infos, .{
            cookie = xcb_intern_atom(d.handle, xx !should_create, xx atom.name.count, atom.name.data),
            atom = cast(*xcb_atom_t)(cast(*u8) *d.atoms + atom.offset_in_bytes),
            name = atom.name,
        });
    }

    for info: atom_infos {
        error: *xcb_generic_error_t;
        reply := xcb_intern_atom_reply(d.handle, info.cookie, *error);
        if !reply {
            log_error("Failed to intern X11 atom: %", error.*);
            continue;
        }

        info.atom.* = reply.atom;
        c_free(reply);
    }

    d.clipboard.window = xcb_generate_id(d.handle);
    prop_mask := xcb_cw_t.EVENT_MASK;
    prop_list := u32.[xx (xcb_event_mask_t.PROPERTY_CHANGE)];
    xcb_create_window_checked(
        c=d.handle,
        depth=XCB_COPY_FROM_PARENT,
        wid=d.clipboard.window,
        parent=d.screen.root,
        x=0, y=0, width=1, height=1, border_width=1,
        _class=.XCB_WINDOW_CLASS_INPUT_OUTPUT,
        visual=d.screen.root_visual,
        value_mask=prop_mask,
        value_list=prop_list.data,
    );

    d.clipboard.incoming_data = copy_string("");
    d.clipboard.outgoing_data = copy_string("");

    // And libxkbcommon
    // TODO: Maybe extract it into xkbcommon.jai
    {
        xkb_major: u16 = 1;
        xkb_minor: u16 = 0;
        ret := xkb_x11_setup_xkb_extension(
            d.handle,
            xkb_major,
            xkb_minor,
            0,
            *xkb_major, *xkb_minor, *d.base.xkb_state.event_base, null,
        );

        if (!ret) {
            log_error("Couldn't setup XKB extension\n");
            return false;
        }
        log("XCB: xcb-xkb version %.%", xkb_major, xkb_minor);

        affect := xcb_xkb_event_type_t.NEW_KEYBOARD_NOTIFY | .MAP_NOTIFY | .STATE_NOTIFY;
        map_parts := xcb_xkb_map_part_t.KEY_TYPES | .KEY_SYMS | .MODIFIER_MAP | .EXPLICIT_COMPONENTS | .KEY_ACTIONS | .VIRTUAL_MODS | .VIRTUAL_MOD_MAP;
        state_parts := xcb_xkb_state_part_t.MODIFIER_BASE | .MODIFIER_LATCH | .MODIFIER_LOCK | .GROUP_BASE | .GROUP_LATCH | .GROUP_LOCK;
        details := xcb_xkb_select_events_details_t.{
            affectNewKeyboard = .KEYCODES,
            newKeyboardDetails = .KEYCODES,
            affectState = state_parts,
            stateDetails = state_parts,
        };

        core_kbd_device_id := xkb_x11_get_core_keyboard_device_id(d.handle);
        if (core_kbd_device_id == -1) {
            log_error("Couldn't find core keyboard device\n");
            return false;
        } else {
            log("Core keyboard device is %\n", core_kbd_device_id);
        }

        xcb_xkb.select_events_aux(xx d.handle, xx core_kbd_device_id, affect, 0, 0, map_parts, map_parts, *details);
        if !xkb_state_init(*d, cast(*xcb_connection_t)d.handle) return false;
    }

    // xcb_sync
    if xcb_sync.id {
        sync_ext := xcb_get_extension_data(d.handle, xcb_sync.id);

        if (!sync_ext.present) {
            log_error("SYNC is not present on this X11 server");
            return false;
        } else {

            init_error: *xcb_generic_error_t;
            init_cookie := xcb_sync.initialize(d.handle, 5, 0);
            init_reply := xcb_sync.initialize_reply(d.handle, init_cookie, *init_error);
            d.sync_info.present = true;
            d.sync_info.major = init_reply.major_version;;
            d.sync_info.minor = init_reply.minor_version;;
            if init_reply.major_version < 3 {
                log_error("X11 sync version is too small, supported %, got %\n", 3, d.sync_info.major);
            } else {
                log("X11 sync: xcb-sync version %.%", d.sync_info.major, d.sync_info.minor);
            }
        }
    }

    // xcb_cursor
    if xcb_cursor_loaded {
        success := load_cursors(*d);
        if !success {
            log_error("X11 was unable to preload cursors from theme\n");
        }
    }

    display.xcb = d;
    return true;
}


load_cursors :: (display: *XCB_Display) -> bool {
    ctx: *xcb_cursor_context_t;
    if xcb_cursor.context_new(display.handle, display.screen, *ctx) < 0 return false;
    defer xcb_cursor.context_free(ctx);

    preloaded_x_cursors :: string.[
        "default", "pointer", "not-allowed", "col-resize", "row-resize",
        "all-scroll", "nw-resize", "se-resize", "text",
    ];

    for preloaded_x_cursors {
        name := temp_c_string(it);
        table_set(*display.cursors, it, xcb_cursor.load_cursor(ctx, name));
    }

    return true;
}


create_window :: (
    display: *Display,
    window_ret: *Window,
    width: s32,
    height: s32,
    window_name: string,
    window_x := 0,
    window_y := 0,
    window_class: string = "JDL-jai-application",
    parent: *Window = INVALID_WINDOW,
    background_color_rgb := DEFAULT_WINDOW_CREATION_COLOR
) -> bool {
    // assert display.xcb;
    d := *display.xcb;
    screen := d.screen;
    window_ret.base.type = XCB_Window;
    window_ret.base.display = display;
    window_ret.base.get_mouse_pointer_position = xcb_get_mouse_pointer_position;
    window_ret.base.set_window_title = xcb_set_window_title;
    window_ret.base.has_native_handle = xcb_has_native_handle;
    window_ret.base.finalize_present = xcb_finalize_present;
    window_ret.base.set_cursor = xcb_set_cursor;

    to_u16 :: (f: float) -> u16 #expand {
        u := clamp(cast(s32)(f * 65535), 0, 65535);
        return cast(u16) u;
    }

    // background_color: XColor;
    // background_color.flags |= DoRed | DoGreen | DoBlue;
    // background_color.red     = to_u16(background_color_rgb[0]);
    // background_color.green   = to_u16(background_color_rgb[1]);
    // background_color.blue    = to_u16(background_color_rgb[2]);
    // XAllocColor(d, cmap, *background_color);



    event_mask := xcb_event_mask_t.EXPOSURE | .STRUCTURE_NOTIFY | .FOCUS_CHANGE | .ENTER_WINDOW | .LEAVE_WINDOW | .KEY_PRESS | .KEY_RELEASE | .BUTTON_PRESS | .BUTTON_RELEASE | .POINTER_MOTION;
    window := xcb_generate_id(d.handle);
    window_ret.xcb.handle = window;
    prop_mask := xcb_cw_t.EVENT_MASK; // | .WIN_GRAVITY; //  | .BIT_GRAVITY;
    // prop_mask := xcb_cw_t.BACK_PIXEL | .EVENT_MASK;
    prop_list := u32.[
        // screen.white_pixel,
        xx event_mask,
        // xx xcb_gravity_t.NORTH_WEST
    ];

    window_cookie := xcb_create_window_checked(
        c=d.handle,
        depth=XCB_COPY_FROM_PARENT,
        wid=window,
        parent=screen.root,
        x=xx window_x, y=xx window_y, width=xx width, height=xx height, border_width=1,
        _class=.XCB_WINDOW_CLASS_INPUT_OUTPUT,
        visual=screen.root_visual,
        value_mask=prop_mask,
        value_list=prop_list.data,
    );

    protocols := xcb_atom_t.[d.atoms.WM_DELETE_WINDOW, d.atoms._NET_WM_SYNC_REQUEST];

    xcb_change_property(
        d.handle,
        .REPLACE,
        window,
        d.atoms.WM_PROTOCOLS,
        xx xcb_atom_enum_t.ATOM,
        32, 2, protocols.data,
    );

    xcb_change_window_attributes(
        d.handle,
        window,
        xcb_cw_t.WIN_GRAVITY,
        u32.[xx xcb_gravity_t.NORTH_WEST].data,
    );

    class_sz := sprint("%\0%\0", ifx window_name then window_name else window_class, window_class);
    defer free(class_sz);
    xcb_change_property(
        d.handle,
        .REPLACE,
        window,
        xx xcb_atom_enum_t.WM_CLASS,
        xx xcb_atom_enum_t.STRING,
        8, xx class_sz.count, class_sz.data,
    );

    xcb_set_window_title(window_ret, window_name);

    if d.sync_info.present {
        result := xcb_sync_init(window_ret);
        if !result {
            log_error("XCB Sync couln't be initialized because the extension is not supported\n");
        }
    }

    xcb_map_window(d.handle, window);
    xcb_flush(d.handle);
    window_error := xcb_request_check(d.handle, window_cookie);
    if window_error {
        print("%\n", formatStruct(window_error, 1, true));
    }

    return true;
}


xcb_has_native_handle :: (window: *Window, native_handle: *void) -> bool {
    // xcb_check_usage(null, window);
    return window.xcb.handle == xx native_handle;
}

xcb_get_dimensions :: (window: *Window, right_handed: bool) -> (x: s32, y: s32, width: s32, height: s32, success := true) {
    // xcb_check_usage(null, window);
    w : *XCB_Window = window;
    cookie := xcb_get_geometry(w.display.xcb.handle, w.handle);
    geometry := xcb_get_geometry_reply(w.display.xcb.handle, cookie, null);
    return 0, 0, xx geometry.width, geometry.height, true;
}


xcb_get_mouse_pointer_position :: (display: *Display, right_handed := false) -> x: s32, y: s32, success: bool {
    // xcb_check_usage(display, null);
    d: *XCB_Display = display;

    cookie := xcb_query_pointer(d.handle, d.screen.root);
    reply  := xcb_query_pointer_reply(d.handle, cookie, null);
    defer c_free(reply);

    return reply.root_x, reply.root_y, true;
}


xcb_get_mouse_pointer_position :: (window: *Window, right_handed: bool) -> x: s32, y: s32, success: bool {
    // xcb_check_usage(null, window);
    w : *XCB_Window = window;
    d := w.display;

    cookie := xcb_query_pointer(d.xcb.handle, w.handle);
    reply  := xcb_query_pointer_reply(d.xcb.handle, cookie, null);
    defer c_free(reply);

    return reply.win_x, reply.win_y, true;
}


xcb_set_window_title :: (window: *Window, title: string) {
    // TODO: Error handling and check usage
    // xcb_check_usage(null, window);
    set_utf8_property(window, xx xcb_atom_enum_t.WM_NAME, title);
    set_utf8_property(window, xx xcb_atom_enum_t.WM_ICON_NAME, title);
    set_utf8_property(window, window.xcb.display.xcb.atoms._NET_WM_NAME, title);
    set_utf8_property(window, window.xcb.display.xcb.atoms._NET_WM_ICON_NAME, title);
}


// TODO: I think in xcb implementation we can straight up use xcb_wait_for_event
// directly to block and wait, because under the hood it does pretty much the same -
// polls on a socked with just some additional locking and ref-counting. So maybe all of this
// can be removed.
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

        if pfd[0].revents & POLLIN {
            assert(d.pending_event == null);
            d.pending_event = xcb_poll_for_event(d.handle);
            if !d.pending_event {
                xcb_flush(d.handle);
                continue;
            }
            break;
        }
    }
}


xcb_update_window_events :: (display: *Display) {
    // xcb_check_usage(display, null);

    d: *XCB_Display = display;

    pending_event: *xcb_generic_event_t;

    if d.pending_event {
        pending_event = d.pending_event;
        d.pending_event = null;
    } else {
        pending_event = xcb_poll_for_event(d.handle);
    }

    // poll_for_event docs say you need to free it, code in
    // https://gitlab.freedesktop.org/xorg/lib/libxcb/-/blob/master/src/xcb_in.c
    // shows that it's malloc-allocated as well, and it never frees. So we do this here.
    // It would be really nice to have Jai-native X11 protocol bindings where we can use custom
    // allocators and be happy, but maybe X11 will finally die before this becomes a pressing
    // matter (This will never happen, because Wayland is shit).
    defer if pending_event {
        c_free(pending_event);
    }

    expect_more_events := false;
    elapsed_time := seconds_since_init();
    while pending_event != null || (expect_more_events && elapsed_time < 1.0) {
        defer {
            if pending_event c_free(pending_event);
            pending_event = xcb_poll_for_event(d.handle);
        }

        if !pending_event continue;
        // expect_more_events = false;

        response_type := pending_event.response_type & ~0x80;

        if response_type == d.base.xkb_state.event_base {
            ev := cast(*xcb_generic_event_t) pending_event;
            if ev.pad0 == {
                case XCB_XKB_NEW_KEYBOARD_NOTIFY; #through;
                case XCB_XKB_MAP_NOTIFY; {
                    log("Reloading keyboard map");
                    xkb_state_init(d, d.handle);

                }
                case XCB_XKB_STATE_NOTIFY; {
                    ev := cast(*xcb_xkb_state_notify_event_t) pending_event;
                    xkb_state_set_mods(
                        d,
                        ev.baseMods, ev.latchedMods, ev.lockedMods,
                        xx ev.baseGroup, xx ev.latchedGroup, xx ev.lockedGroup,
                    );
                }
            }
        } else if response_type == {
            case XCB_CLIENT_MESSAGE;
                ev := cast(*xcb_client_message_event_t) pending_event;
                if ev.data.data32[0] == xx d.atoms.WM_DELETE_WINDOW {
                    input_ev: Input.Event;
                    input_ev.type = .QUIT;
                    // array_add(*display.base.events_this_frame, input_ev);
                    array_add(*Input.events_this_frame, input_ev);
                } else if ev.type == d.atoms.WM_PROTOCOLS && ev.data.data32[0] == xx d.atoms._NET_WM_SYNC_REQUEST {
                    window := get_by_native_handle(display, xx ev.window);
                    if window {
                        window.xcb.sync.resize_id.lo = ev.data.data32[2];
                        window.xcb.sync.resize_id.hi = xx ev.data.data32[3];
                        window.xcb.sync.resize_in_progress = false;
                        xcb_sync.set_counter(d.handle, window.xcb.sync.counter_id, window.xcb.sync.resize_id);
                        expect_more_events = true;
                        elapsed_time = 0;
                    }
                }

            case XCB_EXPOSE;
                // We could add a new event type to just redraw a window
                xcb_flush(d.handle);

            case XCB_CONFIGURE_NOTIFY;
                ev := cast(*xcb_configure_notify_event_t) pending_event;
                window := get_by_native_handle(display, xx ev.window);
                expect_more_events = false;
                elapsed_time = seconds_since_init() - elapsed_time;
                if window {
                    if window.xcb.sync.resize_id.lo || window.xcb.sync.resize_id.hi {
                        window.xcb.sync.resize_in_progress = true;
                    }
                    // Belongs to Input
                    add_resize_record(window, ev.width, ev.height);
                }

            case XCB_FOCUS_IN;
                Input.input_application_has_focus = true;
                // array_add(*display.base.events_this_frame, .{type=.WINDOW});
                array_add(*Input.events_this_frame, .{type=.WINDOW});

            case XCB_FOCUS_OUT;
                Input.input_application_has_focus = false;
                // array_add(*display.base.events_this_frame, .{type=.WINDOW});
                array_add(*Input.events_this_frame, .{type=.WINDOW});

            case XCB_ENTER_NOTIFY;
                ev := cast(*xcb_enter_notify_event_t) pending_event;
                d.currently_hovered_window = get_by_native_handle(display, xx ev.event);

            case XCB_LEAVE_NOTIFY;
                d.currently_hovered_window = null;

            case XCB_KEY_PRESS; #through;
            case XCB_KEY_RELEASE;
                ev := cast(*xcb_key_press_event_t) pending_event;
                event_type := ifx response_type == XCB_KEY_PRESS then XKB_Key_Event_Type.Press else .Release;
                xkb_handle_key_event(d, ev.detail, event_type, false);

            case XCB_BUTTON_PRESS; #through;
            case XCB_BUTTON_RELEASE; {
                ev := cast(*xcb_button_press_event_t) pending_event;
                register_mouse_button_event(d, ev.detail, response_type == XCB_BUTTON_PRESS);
            }
            case XCB_SELECTION_NOTIFY;
                ev := cast(*xcb_selection_notify_event_t) pending_event;
                log("EV: selection_notify(requestor=% (%), selection=% (%), target=% (%), property=% (% - %))",
                    ev.requestor,
                    d.clipboard.window,
                    atom_name(d, ev.selection), ev.selection,
                    atom_name(d, ev.target), ev.target,
                    atom_name(d, ev.property), ev.property, d.atoms.JDL_CLIPBOARD_DATA);

                d.clipboard.large_incoming_tranfer = false;

                // We don't handle selection request if it comes from one of our windows
                if !ev.property || ev.requestor != d.clipboard.window {
                    d.clipboard.blocking_tranfser_ongoing = false;
                    continue;
                }

                xcb_err: *xcb_generic_error_t;
                cookie := xcb_get_property(
                    d.handle, 1,
                    ev.requestor,
                    d.atoms.JDL_CLIPBOARD_DATA,
                    xx xcb_atom_enum_t.ANY,
                    0, ~cast(u32)0,
                );
                reply := xcb_get_property_reply(d.handle, cookie, *xcb_err);
                defer c_free(reply);

                if !reply {
                    log("get_property(): %", formatStruct(xcb_err, 1, true));
                    continue;
                }

                log("  reply.type=% format=%", atom_name(d, reply.type), reply.format);

                if reply.type == d.atoms.UTF8_STRING && reply.format == 8 {
                    text: string;
                    text.data = xcb_get_property_value(reply);
                    text.count = xcb_get_property_value_length(reply);
                    log("CLIPBOARD DATA: '%'", text);

                    free(d.clipboard.incoming_data);
                    d.clipboard.incoming_data = copy_string(text);
                    d.clipboard.blocking_tranfser_ongoing = false;
                } else if reply.type == d.atoms.INCR && reply.format == 32 {
                    log("  large clipboard transfer initiated");
                    d.clipboard.large_incoming_tranfer = true;
                    reset(*d.clipboard.incoming_in_flight_data);
                }
            case XCB_PROPERTY_NOTIFY;
                ev := cast(*xcb_property_notify_event_t) pending_event;
                state := cast(xcb_property_t) ev.state;
                // TODO: [DEBUG] logging tier
                // log("property_notify(window=% atom=% state=%)", ev.window, atom_name(d, ev.atom), state);

                if ev.window != d.clipboard.window || state != .NEW_VALUE || !d.clipboard.large_incoming_tranfer {
                    continue;
                }

                xcb_err: *xcb_generic_error_t;
                cookie := xcb_get_property(d.handle,
                    1,
                    d.clipboard.window,
                    d.atoms.JDL_CLIPBOARD_DATA,
                    xx xcb_atom_enum_t.ANY,
                    0, ~cast(u32)0);
                reply := xcb_get_property_reply(d.handle, cookie, *xcb_err);
                defer c_free(reply);

                if !reply {
                    log_error("get_property(): %", xcb_err.*);
                    log("Resetting large clipboard data transfer");
                    d.clipboard.large_incoming_tranfer = false;
                    reset(*d.clipboard.incoming_in_flight_data);
                    continue;
                }

                if reply.type == d.atoms.UTF8_STRING && reply.format == 8 {
                    text: string;
                    text.data = xcb_get_property_value(reply);
                    text.count = xcb_get_property_value_length(reply);
                    if !text {
                        log("Finished large clipboard transfer!");
                        free(d.clipboard.incoming_data);
                        d.clipboard.incoming_data = builder_to_string(*d.clipboard.incoming_in_flight_data);
                        d.clipboard.large_incoming_tranfer = false;
                        d.clipboard.blocking_tranfser_ongoing = false;
                    } else {
                        append(*d.clipboard.incoming_in_flight_data, text);
                        log("Added % bytes of clipboard data", text.count);
                    }
                }
            case XCB_SELECTION_REQUEST;
                ev := cast(*xcb_selection_request_event_t) pending_event;
                log("selection_request(self.clipboard_window=% owner=% requestor=% selection=% target=% property=%)",
                    d.clipboard.window, ev.owner, ev.requestor,
                    atom_name(d, ev.selection),
                    atom_name(d, ev.target),
                    atom_name(d, ev.property));

                if ev.target == d.atoms.TARGETS {
                    atoms := xcb_atom_t.[d.atoms.UTF8_STRING, d.atoms.TARGETS];
                    cookie := xcb_change_property(d.handle, .REPLACE, ev.requestor, ev.property,
                        xx xcb_atom_enum_t.ATOM, 32, xx atoms.count, atoms.data);
                    xcb_err := xcb_request_check(d.handle, cookie);
                    if xcb_err {
                        log_error("Failed to set property % on SelectionRequest(%).requestor=%: %",
                            atom_name(d, ev.property),
                            atom_name(d, ev.target),
                            ev.requestor,
                            xcb_err.*);
                        continue;
                    }
                } else if ev.target == d.atoms.UTF8_STRING {
                    max_length := min(d.max_request_length * 4 - 1024, d.clipboard.outgoing_data.count);
                    cookie := xcb_change_property(d.handle, .REPLACE, ev.requestor, ev.property,
                        ev.target, 8, xx max_length, d.clipboard.outgoing_data.data);
                    xcb_err := xcb_request_check(d.handle, cookie);
                    if xcb_err {
                        log_error("Failed to set property % on SelectionRequest(%).requestor=%: %",
                            atom_name(d, ev.property),
                            atom_name(d, ev.target),
                            ev.requestor,
                            xcb_err.*);
                        continue;
                    }
                }

                sel_notify := xcb_selection_notify_event_t.{
                    response_type = XCB_SELECTION_NOTIFY,
                    requestor = ev.requestor,
                    selection = ev.selection,
                    target = ev.target,
                    time = ev.time,
                    property = ev.property,
                };
                cookie := xcb_send_event(d.handle, 1, ev.requestor, 0, xx *sel_notify);
                xcb_err := xcb_request_check(d.handle, cookie);
                if xcb_err {
                    log_error("Failed to send SelectionNotify to requestor %: %",
                        ev.requestor,
                        xcb_err.*);
                    continue;
                }
            case;
                // log("unhandled xcb event: % %", pending_event.response_type & ~0x80, pending_event.*);
        }
    }
}

register_mouse_button_event :: (display: *XCB_Display, button: u32, pressed: bool) {
    event: Input.Event;
    event.type = .KEYBOARD;
    event.key_pressed = xx pressed;
    if button == {
        case 1; event.key_code = Input.Key_Code.MOUSE_BUTTON_LEFT;
        case 2; event.key_code = Input.Key_Code.MOUSE_BUTTON_MIDDLE;
        case 3; event.key_code = Input.Key_Code.MOUSE_BUTTON_RIGHT;

        case 4; #through;
        case 5;
            event.type = .MOUSE_V_WHEEL;
            event.typical_wheel_delta = DEFAULT_WHEEL_DELTA;
            event.wheel_delta = DEFAULT_WHEEL_DELTA * (ifx (button & 0x01) then cast(s32) -1 else 1);
            array_add(*Input.events_this_frame, event);
            Input.mouse_wheel_delta.vertical += event.wheel_delta;
            // For compat with built-in Input module. Probably need to extract it into some
            // separate Input-compat module
            Input.mouse_delta_z += event.wheel_delta;
            return;

        // case 6; #through;
        // case 7;
        //     event.type = .MOUSE_H_WHEEL;
        //     event.typical_wheel_delta = WHEEL_DELTA;
        //     event.wheel_delta = WHEEL_DELTA * (ifx (button & 0x01) then cast(s32) -1 else 1);
        //     array_add(*display.base.events_this_frame, event);
        //     xd.base.mouse_wheel_delta.horizontal += event.wheel_delta;
        //     return;

        // case 8; event.key_code = Input.Key_Code.MOUSE_BUTTON_X1;
        // case 9; event.key_code = Input.Key_Code.MOUSE_BUTTON_X2;

        case; return;
    }

    Input.input_button_states[event.key_code] =
        ifx event.key_pressed then (Input.Key_Current_State.START | Input.Key_Current_State.DOWN)
        else Input.Key_Current_State.END;

    array_add(*Input.events_this_frame, event);
}


set_utf8_property :: (window: *XCB_Window, property: xcb_atom_t, value: string) {
    d := window.display.xcb;
    xcb_change_property(
        d.handle,
        .REPLACE,
        window.handle,
        property,
        d.atoms.UTF8_STRING,
        8, xx value.count, value.data);
}

Sync_State :: struct {
    initialized: bool;

    counter_id: u32;
    resize_id: xcb_sync_int64_t;
    #place resize_id;
    resize_id64: s64;

    resize_in_progress: bool;
}

xcb_sync_init :: (window: *XCB_Window) -> success: bool {
    display := window.display.xcb;
    if !display.sync_info.present {
        return false;
    }

    con := display.handle;
    atom := display.atoms._NET_WM_SYNC_REQUEST_COUNTER;

    window.sync.counter_id = xcb_generate_id(con);

    counter_cookie := xcb_sync.create_counter_checked(con, window.sync.counter_id, window.sync.resize_id);
    error := xcb_request_check(con, counter_cookie);
    if error {
        log_error("Couldn't create an xcb sync counter, error is: %\n", formatStruct(error, 1, true));
        return false;
    }

    xcb_change_property(
        con,
        .REPLACE,
        window.handle,
        atom,
        xx xcb_atom_enum_t.CARDINAL,
        32, 1, *window.sync.counter_id,
    );

    window.sync.initialized = true;
    return true;
}

xcb_finalize_present :: (window: *Window) {
    win: *XCB_Window = window;
    display := window.base.display.xcb.handle;
    counter := win.sync.counter_id;

    if !counter || !win.sync.resize_in_progress {
        return;
    }

    cookie := xcb_sync.set_counter_checked(display, counter, win.sync.resize_id);
    error := xcb_request_check(display, cookie);
    if error {
        log_error("Couldn't set the counter when finalizing window present, error is %\n", formatStruct(error, 1, true));
    }

    win.sync.resize_id.lo = 0;
    win.sync.resize_id.hi = 0;
    win.sync.resize_in_progress = false;
}

xcb_set_cursor :: (window: *Window, cursor: string) {
    // TODO: error check
    // xcb_check_usage(null, window);
    win : *XCB_Window = window;
    display := win.base.display.xcb;
    found, cursor := table_find(*display.cursors, cursor);
    if found {
        attrs: xcb_change_window_attributes_value_list_t;
        attrs.cursor = cursor;
        xcb_change_window_attributes_aux(display.handle, win.handle, .CURSOR, *attrs);
    }
}

xcb_clipboard_get_text :: (display: *Display) -> string {
    d : *XCB_Display = display;

    cookie := xcb_get_selection_owner(d.handle, d.atoms.CLIPBOARD);
    reply := xcb_get_selection_owner_reply(d.handle, cookie, null);
    defer c_free(reply);

    if reply.owner == d.clipboard.window {
        return copy_string(d.clipboard.outgoing_data);
    }

    void_cookie := xcb_convert_selection(
        d.handle,
        d.clipboard.window,
        d.atoms.CLIPBOARD,
        d.atoms.UTF8_STRING,
        d.atoms.JDL_CLIPBOARD_DATA,
        XCB_CURRENT_TIME,
    );
    xcb_err := xcb_request_check(d.handle, void_cookie);

    if xcb_err {
        log_error("convert_selection(): %", formatStruct(xcb_err, 1, true));
    }

    d.clipboard.blocking_tranfser_ongoing = true;
    start_time := seconds_since_init();
    now := seconds_since_init();
    while (now - start_time) < 5.0 && d.clipboard.blocking_tranfser_ongoing {
        if !d.pending_event  d.pending_event = xcb_wait_for_event(d.handle);
        xcb_update_window_events(display);
        now = seconds_since_init();
    }

    return copy_string(d.clipboard.incoming_data);
}

xcb_clipboard_set_text :: (display: *Display, text: string) {
    d : *XCB_Display = display;
    free(d.clipboard.outgoing_data);
    d.clipboard.outgoing_data = copy_string(text);
    cookie  := xcb_set_selection_owner(d.handle, d.clipboard.window, d.atoms.CLIPBOARD, XCB_CURRENT_TIME);
    xcb_err := xcb_request_check(d.handle, cookie);
    if xcb_err log_error("Failed to set selection owner: %", formatStruct(xcb_err, 1, true));
}

#scope_file

atom_name :: (d: *XCB_Display, atom: xcb_atom_t) -> string {
    found, name := table_find(*d.atom_names, atom);
    if found return name;

    xcb_err: *xcb_generic_error_t;
    cookie := xcb_get_atom_name(d.handle, atom);
    reply  := xcb_get_atom_name_reply(d.handle, cookie, *xcb_err);
    defer c_free(reply);

    if !reply || xcb_err return "";

    n: string;
    n.data  = xcb_get_atom_name_name(reply);
    n.count = xcb_get_atom_name_name_length(reply);
    name = copy_string(n);
    table_add(*d.atom_names, atom, name);
    return name;
}

#import "POSIX";
#import "Hash_Table";

libc :: #system_library "libc";
c_free :: (memory: *void) #foreign libc "free";
