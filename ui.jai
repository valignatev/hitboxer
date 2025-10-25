/*

This is our wrapper around some GetRect widgets to support stuff like pulsating and support need_to_rerender in our program state

*/
our_button :: (r: GR.Rect, text: string, theme: *GR.Button_Theme = null, identifier: s64 = 0, loc := #caller_location, texture: *Texture = null, disable_over := false, disable_press := false, pulsate := false) -> (was_just_pressed: bool, state: *GR.Button_State, was_just_released: bool) {
    using current_program_state;

    was_just_pressed, state, was_just_released := GR.button(r, text, theme, identifier, loc, texture, disable_over, disable_press);

    if pulsate {
        need_to_rerender = true;
        GR.update_production_value_button(r, false, state, .OVER, theme);
    }

    if state.over_factor || state.pressed_factor {
        need_to_rerender = true;
    }
    return was_just_pressed, state, was_just_released;
}

arrow :: (base_rect: GR.Rect, state: *GR.Dropdown_State, theme: *GR.Dropdown_Theme, mapping_mode: Mapping_Mode) {
    using current_program_state;

    r := base_rect;
    dropdown_button_state := state.current_value_state;
    dropdown_button_theme := theme.theme_for_current_value;

    over_factor := dropdown_button_state.over_factor;
    down_effect_t := dropdown_button_state.down_effect_t;
    pressed_factor := dropdown_button_state.pressed_factor;
    if over_factor || down_effect_t || pressed_factor {
        need_to_rerender = true;
    }

    // Logic from button to make the arrow pulsate and flash
    base_color := dropdown_button_theme.surface_color;
    base_color = lerp(base_color, dropdown_button_theme.surface_color_over,  over_factor);
    base_color = lerp(base_color, dropdown_button_theme.surface_color_down,  down_effect_t);
    base_color = lerp(base_color, dropdown_button_theme.surface_color_flash, pressed_factor);

    Simp.immediate_quad(
        r.x , r.y,
        r.x + r.w , r.y + r.h,
        base_color,
    );

    color := my_theme.button_theme.frame_color;
    if mapping_mode == .OPPOSITE || mapping_mode == .REMAP {
        // GREEN
        color.y += 0.4;
    } else if mapping_mode == .OPPOSITE_NO_REPRESS {
        // BLUE
        color.z += 0.4;
    } else if mapping_mode == .NEUTRAL {
        // RED
        color.x += 0.4;
    }
    color = lerp(color, dropdown_button_theme.frame_color_over,  over_factor);
    color = lerp(color, dropdown_button_theme.frame_color_down,  down_effect_t);
    color = lerp(color, dropdown_button_theme.frame_color_flash, pressed_factor);

    base_h := r.h/2;
    base_y := r.y + base_h/2;
    base_x := r.x;

    arrow_width := r.w * 0.25;
    if mapping_mode == .OPPOSITE || mapping_mode == .OPPOSITE_NO_REPRESS {
        Simp.immediate_triangle(
            .{base_x + arrow_width, base_y,            0},
            .{base_x              , base_y + base_h/2, 0},
            .{base_x + arrow_width, base_y + base_h,   0},
            color,
            color,
            color,
        );

        base_x = base_x + arrow_width;
        r.w = r.w - 2 * arrow_width;
    }

    if mapping_mode == .REMAP {
        r.w = r.w - arrow_width;
    }

    Simp.immediate_quad(
        base_x            , base_y + base_h/3,
        base_x + r.w , base_y + base_h/1.5,
        color,
    );

    if mapping_mode == .REMAP || mapping_mode == .OPPOSITE || mapping_mode == .OPPOSITE_NO_REPRESS {
        Simp.immediate_triangle(
            .{base_x + r.w,               base_y           , 0},
            .{base_x + r.w + arrow_width, base_y + base_h/2, 0},
            .{base_x + r.w,               base_y + base_h  , 0},
            color,
            color,
            color,
        );
    }
}

our_checkbox :: (_r: Rect, text: string, selected: bool, theme: *Checkbox_Theme = null, identifier: s64 = 0, loc := #caller_location) -> changed: bool, checkbox_state: Checkbox_State {
    using current_program_state;

    changed, state := GR.base_checkbox(_r, text, selected, theme, identifier, loc);
    if state.base.action_duration_2 != -1 {
        need_to_rerender = true;
    }

    return changed, state;
}

our_dropdown :: (r: Rect, choices: [] string, current_value_pointer: *s32, theme: *Dropdown_Theme = null, disable_press := false, identifier: s64 = 0, z: s32 = 100, loc := #caller_location) -> changed: bool, Dropdown_State {
    if !theme  theme = *default_overall_theme.dropdown_theme;

    // r just describes the Rect for the top of the dropdown.
    // The individual elements below are sized according to theme.button_theme.

    // Draw the background behind the primary choice.

    label_current_value := theme.theme_for_current_value.label_theme;

    // Let's avoid an ABC in case the user passes us a dirty value.
    current_string := "";
    current_value := current_value_pointer.*;
    if (current_value >= 0) && (current_value < choices.count) {
        current_string = choices[current_value];
    }

    hash   := get_hash(loc, identifier);
    state  := find_or_create_state(Dropdown_State, hash);
    if state.original_value < 0 {
        state.original_value = current_value;
    }
    defer {
        GR.stop_using_state(state);
        state.last_getrect_frame -= 1;  // @Hack because we don't have a separate state rect for the popup. @Incomplete!
    }


    // Carve off the dropdown indicator from the rest of the button.
    indicator_width := theme.dropdown_indicator_aspect_ratio * r.h;
    r_right, r_left := cut_right(r, indicator_width);

    current := theme.theme_for_current_value;
    pressed, current_value_state := button(r, current_string, *current, identifier, loc, disable_press=disable_press);
    if theme.theme_for_current_value.rectangle_shape.rounding_flags & (.NORTHEAST | .SOUTHEAST) {
        current.rectangle_shape.rounding_flags = Rectangle_Shape.Rounding_Flags.NORTHEAST | .SOUTHEAST;
    }
    state.status = current_value_state.status;

    // Background rectangle for the arrow, so that the button label doesn't clip into it.
    // Alternatively, we could've drawn the arrow right on the button if a button label
    // had a separate rect that we could set on a button?
    surface_color, frame_color, frame_thickness := get_colors_and_thickness_for_button(*current, current_value_state);
    rounded_rectangle(r_right, current.rectangle_shape, surface_color, frame_color, frame_thickness_override = frame_thickness);

    if pressed {
        state.open = !state.open;
        if state.open active_widget_add   (state);
        else          active_widget_remove(state);
    }


    triangle_margin := r_right.w * 0.1;

    //
    // Update open_t for drawing arrows, etc.
    //

    dt := GR.current_dt;
    if state.open {
        state.open_t = GR.move_toward(state.open_t, 1, dt * theme.arrow_flip_up_rate);
    } else {
        state.open_t = GR.move_toward(state.open_t, 0, dt * theme.arrow_flip_down_rate);
    }

    //
    // Draw the dropdown arrow.
    //
    draw_procs.set_shader_for_color();
    {
        p0, p1, p2, p3 := get_quad(r_right);
        p4 := to_vec3(lerp(p2, p3, .5));
        p4.y -= triangle_margin;
        p5 := to_vec3(p1);
        p5.x -= triangle_margin;
        p5.y += triangle_margin;
        p6 := to_vec3(p0);
        p6.x += triangle_margin;
        p6.y += triangle_margin;

        p5 = lerp(p5, p4, .6);
        p6 = lerp(p6, p4, .6);

        k := 2.3*triangle_margin;
        p4.y -= k;
        p5.y -= k;
        p6.y -= k;

        if state.open_t {
            theta := -cast(float)(state.open_t * TAU * .25);
            barycenter := (p4 + p5 + p6) * (1 / 3.0);

            p4 -= barycenter;
            p5 -= barycenter;
            p6 -= barycenter;

            p4.xy = rotate(p4.xy, theta);
            p5.xy = rotate(p5.xy, theta);
            p6.xy = rotate(p6.xy, theta);

            p4 += barycenter;
            p5 += barycenter;
            p6 += barycenter;
        }

        draw_arrow(current_value_state, p4, p5, p6, *theme.theme_for_current_value);
    }

    state.hash                  = hash;
    state.loc                   = loc;
    state.current_value_pointer = current_value_pointer;
    state.current_value_state   = current_value_state;
    if state.open {
        state.base_rect             = r;
        state.choices               = choices;
        state.theme                 = theme.*;
        state.z                     = z;
    }

    GR.add_popup(our_draw_dropdown_popup, state, state.z);
    changed := current_value_pointer.* != state.original_value;
    if changed {
        state.original_value = current_value_pointer.*;
    }
    return changed, state;
}


our_draw_dropdown_popup :: (_state: *void) {
    state := cast(*Dropdown_State) _state;
    if !state.open return;

    GR.start_using_state(state);
    defer GR.stop_using_state(state);

    r := state.base_rect;

    occluder_start(state, r);

    theme                 := state.theme;
    current_value_pointer := state.current_value_pointer;
    choices               := state.choices;

    choice_theme := *theme.theme_for_each_choice;
    label_each_choice := choice_theme.label_theme;

    current_value := current_value_pointer.*;

    // For now, assume the choices are the same height as the current value display.
    s := r;
    s.y += r.h;

    // @NOTE(valigo): fork draw_dropdown_popup to make it wider, because some of my options don't fit.
    // Ideally, make it stretch automatically, because we can get the width of prepared text.
    s.w *= 2;
    s.x -= r.w/2;

    top_y    := s.y;
    bottom_y := s.y;

    pick_choice := -1;
    if state.open {
        for choices {
            sub_hash := get_hash(#location(), it_index);
            choice_hash := combine_hashes(state.hash, sub_hash);

            t := choice_theme;
            if (cast(s32) it_index) == current_value  t = *theme.theme_for_current_choice;

            pressed, _, released := button(s, it, t, xx,no_check choice_hash, state.loc);
            bottom_y = s.y;
            s.y += s.h;

            if released {
                pick_choice = it_index;
            }
        }

        if pick_choice >= 0 {
            state.open = false;
            current_value_pointer.* = cast(s32) pick_choice;
            update_action_durations(state.current_value_state, *theme.theme_for_current_value, true, 0);
        }
    }

    s.h = bottom_y - top_y;
    s.y = bottom_y;   // Undo the y motion from the final choice.
    occluded := bound(r, s);
    occluder_finish(state, occluded);
}


draw_our_subwindow :: (state: *Subwindow_State) {
    GR.start_using_state(state);
    GR.current_subwindow = state;
    defer {
        GR.stop_using_state(state);
        GR.current_subwindow = null;
    }

    info  := state.info;
    theme := *state.theme;

    title_text := info.title_text;
    full_rect := info.rect;

    occluder_start(state, full_rect);

    title_bar_height := get_title_bar_height(theme);

    r := info.rect;
    if (state.render_target_width != GR.render_target_width) || (state.render_target_height != GR.render_target_height) {
        if info.fixed_aspect_ratio > 0 {
            // For now we resize the new rect based on the old one...
            old_title_bar_height := get_title_bar_height(theme, state.render_target_height);
            remainder, old_client_rect := cut_top(r, old_title_bar_height);
            aspect := info.fixed_aspect_ratio;
            new_client_rect := rescale(old_client_rect, state.render_target_width, state.render_target_height);

            new_client_rect.h = new_client_rect.w / aspect;  // For now width is always authoritative, which might not be that useful or good in some cases...
            new_client_rect.h += title_bar_height;
            r = new_client_rect;
        } else {
            r = rescale(info.rect, state.render_target_width, state.render_target_height);
        }

        if state.dragging {
            state.dragging_offset = rescale(state.dragging_offset, GR.render_target_width, GR.render_target_height);
            state.dragging_start  = rescale(state.dragging_start,  GR.render_target_width, GR.render_target_height);
            state.dragging_last   = rescale(state.dragging_last,   GR.render_target_width, GR.render_target_height);
        }

        state.render_target_width  = GR.render_target_width;
        state.render_target_height = GR.render_target_height;

        full_rect = r;
    }

    if state.dragging {
        if GR.active_widget != state          state.dragging = 0;
        if !(GR.mouse_button_left_state & .DOWN) state.dragging = 0;

        if state.dragging {
            update_dragging(state, *full_rect);
            r = full_rect; // @Cleanup: Probably should not have both of these variables.
        }

        else active_widget_remove(state);
    }

    title_bar_rect, content_area := cut_top(full_rect, title_bar_height);
    state.title_bar_rect = title_bar_rect;

    if content_area.h < 0  content_area.h = 0;

    state.content_rect = content_area;

    frame_pixels := 0.0;
    // Draw the background quad.
    // For now, we match the roundedness to that of the title bar.
    // (This will help us do fringe that matches + makes sense, too).
    if content_area.h >= 0 {  // We may end up in the negative if we get weird input parameters...!
        b := *theme.title_bar.rectangle_shape;
        radius_pixels := get_roundedness_for_rect(title_bar_rect, b.roundedness_type, b.roundedness, GR.global_rounding_radius_in_pixels, .5);

        draw_procs.set_shader_for_color(true);

        modified := theme.region_background.shape;
        modified.roundedness_type = .ABSOLUTE_FROM_THEME_FIELD;
        modified.roundedness      = radius_pixels;

        frame_pixels = rounded_rectangle(content_area, modified, theme.region_background.color, theme.region_background.frame_color);
    } else {
        content_area.h = 0; // So we can push the scissor... which we pop later anyways.
    }

    push_scissor(expand(content_area, -frame_pixels));

    draw := state.info.draw;
    if draw  draw(state, content_area, state.info.user_data);

    if !GR.some_widget_received_left_mouse_button && (GR.mouse_button_left_state & .START) {
        flags := get_status_flags(full_rect, ignore=.LEFT_CLICK);
        if flags & .OVER // User clicked somewhere on window background.
            state.wants_a_raise = true;
    }

    rth := GR.render_target_height;
    resize_rect: Rect;
    {
        // Draw the resize corner before popping the scissor, please!
        resize_w := floor(theme.resize_rect_size * rth + .5);

        resize_rect.x = r.x + r.w - resize_w;
        resize_rect.y = r.y + r.h - resize_w;
        resize_rect.w = resize_w;
        resize_rect.h = resize_w;

        if theme.subwindow_flags & .VISIBLE_RESIZE_CORNER {
            draw_resize_corner(theme, state, resize_rect);
        }
    }

    pop_scissor();

    active_pointer: Pointer_Image;
    active_pointer_set := false;

    if state.dragging {
        if GR.active_widget != state  state.dragging = 0;
        if !state.dragging  active_widget_remove(state);
    }


    //
    // :TitleBarOverride
    // Test dragging before drawing the title bar, because we want our drag rectangles
    // to override the title bar (and tell it that the title bar will not be activated
    // if we are over a drag rect).
    //
    occlusion := full_rect;

    pressed_flags: Resize_Controls;
    over_flags:    Resize_Controls;

    if (theme.resize_controls & .ENWS) && !(GR.active_widget && GR.active_widget_is_grabbing) && !events_occluded() && !GR.some_widget_received_left_mouse_button {
        // @TODO We checked some_widget_received_left_mouse_button here because we don't want to be in the situation of having simultaneously
        // activated a widget and started dragging; this way only the widget activation occurs.  However, since the mouse pointer where
        // this overlap occured will have been the resize pointer (or w/e) this isn't great; the user would expect the resize operation, not
        // the widget activation.  It would be better if this resize stuff happened before we call the draw callback.

        check_resize_rect :: (r: Rect, flag: Resize_Controls, over: *Resize_Controls, pressed: *Resize_Controls) {
            status := get_status_flags(r);
            if status & .PRESSED then pressed.* |= flag;
            if status & .OVER    then over.*    |= flag;
        }

        hmargin := theme.drag_corner_margin * rth;
        vmargin := theme.drag_corner_margin * rth;

        Clamp(*hmargin, 0, r.w * (1/3.0));
        Clamp(*vmargin, 0, r.h * (1/3.0));

        pressed_h, pressed_v: bool;
        over_h, over_v: bool;

        if theme.resize_controls & .EAST {
            i := theme.drag_intrusion_east * rth;
            e := theme.drag_extrusion_east * rth;

            if e + i > 0 {
                s := get_rect(r.x + r.w - i, r.y, e+i, r.h);
                flag := maybe_diagonalize(.EAST, r.y, r.h, vmargin, .NORTH, .SOUTH, GR.mouse_y_float);
                flag &= theme.resize_controls;
                check_resize_rect(s, flag, *over_flags, *pressed_flags);
                occlusion.w += e;
            }
        }

        if theme.resize_controls & .WEST {
            i := theme.drag_intrusion_west * rth;
            e := theme.drag_extrusion_west * rth;

            if e + i > 0 {
                s := get_rect(r.x - e, r.y, e+i, r.h);
                flag := maybe_diagonalize(.WEST, r.y, r.h, vmargin, .NORTH, .SOUTH, GR.mouse_y_float);
                flag &= theme.resize_controls;
                check_resize_rect(s, flag, *over_flags, *pressed_flags);
                occlusion.x -= e;
                occlusion.w += e;
            }
        }

        if theme.resize_controls & .SOUTH {
            i := theme.drag_intrusion_south * rth;
            e := theme.drag_extrusion_south * rth;

            if e + i > 0 {
                s := get_rect(r.x, r.y + r.h - i, r.w, e+i);
                flag := maybe_diagonalize(.SOUTH, r.x, r.w, hmargin, .WEST, .EAST, GR.mouse_x_float);
                flag &= theme.resize_controls;
                check_resize_rect(s, flag, *over_flags, *pressed_flags);
                occlusion.y -= e;
                occlusion.h += e;
            }
        }

        if theme.resize_controls & .NORTH {
            i := theme.drag_intrusion_north * rth;
            e := theme.drag_extrusion_north * rth;

            if e + i > 0 {
                s := get_rect(r.x, r.y - e, r.w, e+i);
                flag := maybe_diagonalize(.NORTH, r.x, r.w, hmargin, .WEST, .EAST, GR.mouse_x_float);
                flag &= theme.resize_controls;
                check_resize_rect(s, flag, *over_flags, *pressed_flags);
                occlusion.h += e;
            }
        }

        if over_flags {
            active_pointer     = get_pointer_from_resize_control(over_flags);
            active_pointer_set = true;

            if pressed_flags {
                start_resizing(state, full_rect);
                state.dragging_resize_control = adjust_resize_control(theme, state, pressed_flags);
            }
        }

        if theme.resize_controls & .CORNER_SE {
            if !over_flags {  // Let the directional edges take priority here... maybe it should be the other way around.
                status := get_status_flags(resize_rect);
                if status & .PRESSED {
                    start_resizing(state, full_rect);
                    state.dragging_resize_control = adjust_resize_control(theme, state, .CORNER_SE);
                } else if status & .OVER {
                    flags := adjust_resize_control(theme, state, .CORNER_SE);
                    active_pointer     = get_pointer_from_resize_control(flags);
                    active_pointer_set = true;
                }
            }
        }
    }


    draw_bar := theme.subwindow_flags & .TITLE_BAR != 0; // bar.w > 2*b && bar.h > 2*b;
    if draw_bar {
        // background_color := theme.title_bar.color;
        sub_hash_title := get_hash(#location(), 0);
        title_button_hash := combine_hashes(state.hash, sub_hash_title);

        close_button_pressed := false;
        inside_close_button  := false;
        // @NOTE(valigo) - disable dragging subwindows entirely
        resize_related_disable := true;

        c: Rect;  // For the close button.
        title_bar_text_rect := state.title_bar_rect;
        if theme.subwindow_flags & .CLOSE_BUTTON {
            t := *state.title_bar_rect;
            w := t.h * theme.close_button_width;
            h := t.h * theme.close_button_height;
            margin := t.h * theme.close_button_right_margin;

            c.x = t.x + t.w - w - margin;
            c.y = t.y + (t.h - h) * .5;
            c.w = w;
            c.h = h;
            title_bar_text_rect.w -= (w + margin);

            if is_inside(GR.mouse_x_float, GR.mouse_y_float, c) {
                inside_close_button = true;
            }
        }

        title_bar_pressed, title_bar_button := button(state.title_bar_rect, "", *theme.title_bar, xx,no_check title_button_hash, disable_press=inside_close_button, disable_over=resize_related_disable);
        core_draw_button_label(title_bar_text_rect, info.title_text, title_bar_button, *theme.title_bar);

        close_button_state: *Button_State;
        if theme.subwindow_flags & .CLOSE_BUTTON {
            sub_hash_close := get_hash(#location(), 0);
            close_button_hash := combine_hashes(state.hash, sub_hash_close);
            close_button_pressed, close_button_state = button(c, "", *theme.close_button, xx,no_check close_button_hash);

            // Draw the X on the close button.
            x_height := c.h * theme.close_button_height * theme.close_button_x_height;
            x_rect := c;
            x_rect.x += (c.w - x_height)  * .5;
            x_rect.y += (c.h - x_height) * .5;
            x_rect.w  = x_height;
            x_rect.h  = x_height;

            b := x_height * 0.05;  // Half-thickness of each arm of the X.
            p0, p1, p2, p3 := get_quad(x_rect);
            v02 := unit_vector(p2 - p0);
            v13 := unit_vector(p3 - p1);
            w02 := Vector2.{-v02.y, v02.x};
            w13 := Vector2.{-v13.y, v13.x};

            bt := *theme.close_button;
            color := bt.text_color;

            // @Refactor @Robustness: Convert to over_factor    which in button.jai I think is some nonlienar warp of this?
            color = lerp(color, bt.text_color_over,    close_button_state.over_effect_t);
            // @Refactor @Robustness: Convert to pressed_factor which in button.jai I think is some nonlienar warp of this?
            color = lerp(color, bt.text_color_pressed, close_button_state.down_effect_t);

            strut := w02 * b;
            draw_procs.immediate_quad(p0 - strut, p2 - strut, p2 + strut, p0 + strut, color);
            strut  = w13 * b;
            draw_procs.immediate_quad(p1 - strut, p3 - strut, p3 + strut, p1 + strut, color);
        }

        if close_button_pressed {
            state.info.open = false;
            close_button_state.status  = 0;
            close_button_state.pressed = false;
        } else if title_bar_pressed {
            // @NOTE(valigo): I don't want my subwindows to be dragged around, so I just remove this code
            state.dragging                = .TITLE;
            state.dragging_start          = Vector2.{GR.mouse_x_float, GR.mouse_y_float};
            state.dragging_last           = state.dragging_start;
            state.dragging_offset         = Vector2.{GR.mouse_x_float - r.x, GR.mouse_y_float - r.y};
            state.dragging_resize_control = 0;
            active_widget_add(state, true);

            state.wants_a_raise = true;
        }
    }


    if state.dragging {
        hv := state.dragging_resize_control;
        if hv {
            active_pointer     = get_pointer_from_resize_control(state.dragging_resize_control);
        } else {
            // This is a title bar drag.
            active_pointer     = .DRAGGING_FREE;
        }

        active_pointer_set = true;
    }

    if active_pointer_set  draw_procs.set_pointer_image(active_pointer, state);

    occluder_finish(state, occlusion);

    state.info.rect = full_rect;
}


our_draw_popups :: () {
    GR.pointer_end_frame();  // We don't have a better place to put this right now!

    quick_sort(GR.popups, (x, y) => ifx x.z == y.z then x.serial-y.serial else x.z-y.z);

    to_raise: *Subwindow_State;
    for GR.subwindows if it.wants_draw {
        draw_our_subwindow(it);
        it.wants_draw = false;

        if it.wants_a_raise {
            to_raise = it;
            it.wants_a_raise = false;
        }
    }

    if to_raise raise(to_raise);

    GR.drawing_popups = true;
    for * GR.popups {
        it.proc(it.data);
    }
    GR.drawing_popups = false;

    // There is no explicit GetRect end-of-frame call; this is the closest thing.
    // Once we get here, we are done drawing widgets, at least in theory!

    // If the left mouse button was pressed, and no widget ever intercepted it,
    // and we aren't active, deselect active widgets.

    if (GR.mouse_button_left_state & .START) && !GR.some_widget_received_left_mouse_button {
        if !(GR.active_widget && GR.active_widget_is_grabbing) {
            GR.active_widget_deactivate_all();
        }
    }
}


#scope_file

GR :: #import "GetRect_LeftHanded";
#import "Simp";
