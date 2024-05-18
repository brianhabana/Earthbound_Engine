cursor_timer += 0.25;

if (instance_exists(objPlayer)) {
    objPlayer.canmove = 0;
}

if (cursor_timer == 1) {
    cursor_image_index += 1;
    cursor_timer = 0;
}

if (input_check_pressed("up")) {
    if (ok) {
        audio_play_sound(sndselect2, 0, 0);
        switch (choices) {
            case 2:
                if (cursor_y == _y[1]) {
                    cursor_y = _y[2];
                } else if (cursor_y == _y[2]) {
                    cursor_y = _y[1];
                }
                break;
            case 3:
                if (cursor_y == _y[1]) {
                    cursor_y = _y[3];
                } else if (cursor_y == _y[2]) {
                    cursor_y = _y[1];
                } else if (cursor_y == _y[3]) {
                    cursor_y = _y[2];
                }
                break;
            case 4:
                if (cursor_y == _y[1]) {
                    cursor_y = _y[4];
                } else if (cursor_y == _y[2]) {
                    cursor_y = _y[1];
                } else if (cursor_y == _y[3]) {
                    cursor_y = _y[2];
                } else if (cursor_y == _y[4]) {
                    cursor_y = _y[3];
                }
                break;
            case 5:
                if (cursor_y == _y[1]) {
                    cursor_y = _y[5];
                } else if (cursor_y == _y[2]) {
                    cursor_y = _y[1];
                } else if (cursor_y == _y[3]) {
                    cursor_y = _y[2];
                } else if (cursor_y == _y[4]) {
                    cursor_y = _y[3];
                } else if (cursor_y == _y[5]) {
                    cursor_y = _y[4];
                }
                break;
        }
    }
}

if (input_check_pressed("down")) {
    if (ok) {
        audio_play_sound(sndselect2, 0, 0);
        switch (choices) {
            case 2:
                if (cursor_y == _y[1]) {
                    cursor_y = _y[2];
                } else if (cursor_y == _y[2]) {
                    cursor_y = _y[1];
                }
                break;
            case 3:
                if (cursor_y == _y[1]) {
                    cursor_y = _y[2];
                } else if (cursor_y == _y[2]) {
                    cursor_y = _y[3];
                } else if (cursor_y == _y[3]) {
                    cursor_y = _y[1];
                }
                break;
            case 4:
                if (cursor_y == _y[1]) {
                    cursor_y = _y[2];
                } else if (cursor_y == _y[2]) {
                    cursor_y = _y[3];
                } else if (cursor_y == _y[3]) {
                    cursor_y = _y[4];
                } else if (cursor_y == _y[4]) {
                    cursor_y = _y[1];
                }
                break;
            case 5:
                if (cursor_y == _y[1]) {
                    cursor_y = _y[2];
                } else if (cursor_y == _y[2]) {
                    cursor_y = _y[3];
                } else if (cursor_y == _y[3]) {
                    cursor_y = _y[4];
                } else if (cursor_y == _y[4]) {
                    cursor_y = _y[5];
                } else if (cursor_y == _y[5]) {
                    cursor_y = _y[1];
                }
                break;
        }
    }
}

if (input_check_pressed("accept")) {
    if (ok) {
        audio_play_sound(sndchoose, 0, 0);
        if (cursor_y == _y[1]) {
            answer = 0;
        } else if (cursor_y == _y[2]) {
            answer = 1;
        } else if (cursor_y == _y[3]) {
            answer = 2;
        } else if (cursor_y == _y[4]) {
            answer = 3;
        } else if (cursor_y == _y[5]) {
            answer = 4;
        }
        if (global.timeline_obj != noone) {
            with (global.timeline_obj) {
                timeline_running = 1;
                timeline_speed = 1;
            }
            global.t_answer = answer;
        } else {
            object.answer = answer;
        }
        instance_destroy();
    }
}

/* Uncomment and fix if necessary
if (global.debug) {
    choices += keyboard_check_pressed(vk_right);
    choices -= keyboard_check_pressed(vk_left);

    if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left)) {
        alarm[0] = 1;
    }
}
*/

show_debug_message("objQuestion");
