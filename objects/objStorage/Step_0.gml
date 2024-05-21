/// @description Keyboard controls
if ok {
    if (input_check_pressed("left")) {
        audio_play_sound(sndselect, 0, 0);
        if (cursor_x == _x[2]) {
            cursor_x = _x[1];
        } else if (cursor_x == _x[1]) {
            cursor_x = _x[2];
        }
    } else if (input_check_pressed("right")) {
        audio_play_sound(sndselect, 0, 0);
        if (cursor_x == _x[1]) {
            cursor_x = _x[2];
        } else if (cursor_x == _x[2]) {
            cursor_x = _x[1];
        }
    } else if (input_check_pressed("down")) {
        audio_play_sound(sndselect2, 0, 0);
        if (cursor_y == _y[1]) {
            cursor_y = _y[2];
        } else if (cursor_y == _y[2]) {
            cursor_y = _y[3];
        } // Add other cases as needed
    } else if (input_check_pressed("up")) {
        audio_play_sound(sndselect2, 0, 0);
        if (cursor_y == _y[1]) {
            if (page > 0) {
                cursor_y = _y[10];
                page--;
                event_user(0);
            }
        } else if (cursor_y == _y[2]) {
            cursor_y = _y[1];
        } // Add other cases as needed
    } else if (input_check_pressed("accept")) {
        if (!is_undefined(num) && global.pl_count != 0) {
            audio_play_sound(sndchoose, 0, 0);
            keyboard_clear(global.kb_choose);
            switch (add_item_ext(num)) {
                case -1:
                    object.item = -1;
                    break;
                default:
                    object.item = num;
                    del_item_storage(page * 20 + num_val);
                    break;
            }
            instance_destroy();
        }
    } else if (input_check_pressed("cancel")) {
        object.item = 0;
        audio_play_sound(sndback, 0, 0);
        instance_destroy();
    }
}

x = __view_get(e__VW.XView, 0);
y = __view_get(e__VW.YView, 0);

cursor_timer += 0.25;

if (cursor_timer == 1) {
    cursor_image_index += 1;
    cursor_timer = 0;
}

// Do all the work based on cursor position
// Make sure to handle other cases as needed
