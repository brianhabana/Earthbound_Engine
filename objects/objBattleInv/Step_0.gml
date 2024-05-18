/// @description Keyboard controls
if ok {
    if input_check_pressed("cancel") {
        with objBattleController { ok = 1 }
        audio_play_sound(sndback,0,0)
        instance_destroy();
    } else if input_check_pressed("accept") {
        if num !=0 {
            if global.item[num,3] != "" {
                audio_play_sound(sndchoose,0,0)
                global.itemtouse[objBattleController._turn] = num_val
                ok = 0
                act[objBattleController._turn] = global.item[num,3]
                switch global.item[num,10] {
                    case 0:
                        instance_create(0,0,objPlayerSelector)
                        break;
                    case 1:
                    case 3:
                        if objBattleController._turn > global.pl_count-1 {
                            with objTurnMaster { event_user(2) }
                            turn = 1
                            with objBattleController { in_battle = 1; ok = 1; }
                        } else {
                            with objBattleController { ok = 1; _turn++; cursor_x = _x[1]; cursor_y = _y[1] }
                        }
                        instance_destroy();
                        break;
                    case 2:
                        instance_create(0,0,objTargetSelector)
                        break;
                }
            } else {
                audio_play_sound(snderror,0,0)
            }
        }
    } else if input_check_pressed("left") {
        audio_play_sound(sndselect,0,0)
        if cursor_x = _x[2]
        {
        cursor_x = _x[1]
        }
        else if cursor_x = _x[1]
        {
        cursor_x = _x[2]
        }
    } else if input_check_pressed("up") {
        audio_play_sound(sndselect2,0,0)
        if cursor_y = _y[1] {
            if page == 1 {
                page = 2
            } else {
                page = 1
            }
            event_perform(ev_other,ev_user0)
            cursor_y = _y[5]
        } else if cursor_y = _y[2] {
            cursor_y = _y[1]
        } else if cursor_y = _y[3] {
            cursor_y = _y[2]
        } else if cursor_y = _y[4] {
            cursor_y = _y[3]
        } else if cursor_y = _y[5] {
            cursor_y = _y[4]
        }
    } else if input_check_pressed("right") {
        audio_play_sound(sndselect,0,0)
        if cursor_x = _x[1]
        {
        cursor_x = _x[2]
        }
        else if cursor_x = _x[2]
        {
        cursor_x = _x[1]
        }
    } else if input_check_pressed("down") {
        audio_play_sound(sndselect2,0,0)
        if cursor_y = _y[1] {
            cursor_y = _y[2]
        } else if cursor_y = _y[2] {
            cursor_y = _y[3]
        } else if cursor_y = _y[3] {
            cursor_y = _y[4]
        } else if cursor_y = _y[4] {
            cursor_y = _y[5]
        } else if cursor_y = _y[5] {
            if page == 1 {
                page = 2
            } else {
                page = 1
            }
            event_perform(ev_other,ev_user0)
            cursor_y = _y[1]
        }
    }
}

cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}

visible = !(instance_exists(objTargetSelector) or instance_exists(objPlayerSelector))

if cursor_x = _x[1] and cursor_y = _y[1] { num = (inv[1]>0 ? inv[1] : 0);   num_val = 10*page-10 }
if cursor_x = _x[2] and cursor_y = _y[1] { num = (inv[2]>0 ? inv[2] : 0);   num_val = 1+10*page-10 }
if cursor_x = _x[1] and cursor_y = _y[2] { num = (inv[3]>0 ? inv[3] : 0);   num_val = 2+10*page-10 }
if cursor_x = _x[2] and cursor_y = _y[2] { num = (inv[4]>0 ? inv[4] : 0);   num_val = 3+10*page-10 }
if cursor_x = _x[1] and cursor_y = _y[3] { num = (inv[5]>0 ? inv[5] : 0);   num_val = 4+10*page-10 }
if cursor_x = _x[2] and cursor_y = _y[3] { num = (inv[6]>0 ? inv[6] : 0);   num_val = 5+10*page-10 }
if cursor_x = _x[1] and cursor_y = _y[4] { num = (inv[7]>0 ? inv[7] : 0);   num_val = 6+10*page-10 }
if cursor_x = _x[2] and cursor_y = _y[4] { num = (inv[8]>0 ? inv[8] : 0);   num_val = 7+10*page-10 }
if cursor_x = _x[1] and cursor_y = _y[5] { num = (inv[9]>0 ? inv[9] : 0);   num_val = 8+10*page-10 }
if cursor_x = _x[2] and cursor_y = _y[5] { num = (inv[10]>0 ? inv[10] : 0); num_val = 9+10*page-10 }

show_debug_message("objBattleInv");