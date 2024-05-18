
if input_check_pressed("up") {
    audio_play_sound(sndselect2,0,0)
    if cursor_y = _y[1] {
        cursor_y = _y[6]
        set_flag(0,5)
    } else if cursor_y = _y[2] {
        cursor_y = _y[1]
        set_flag(0,0)
    } else if cursor_y = _y[3] {
        cursor_y = _y[2]
        set_flag(0,1)
    } else if cursor_y = _y[4] {
        cursor_y = _y[3]
        set_flag(0,2)
    } else if cursor_y = _y[5] {
        cursor_y = _y[4]
        set_flag(0,3)
    } else if cursor_y = _y[6] {
        cursor_y = _y[5]
        set_flag(0,4)
	}
} else if input_check_pressed("down") {
    audio_play_sound(sndselect2,0,0)
    if cursor_y = _y[1] {
        cursor_y = _y[2]
        set_flag(0,1)
    } else if cursor_y = _y[2] {
        cursor_y = _y[3]
        set_flag(0,2)
    } else if cursor_y = _y[3] {
        cursor_y = _y[4]
        set_flag(0,3)
    } else if cursor_y = _y[4] {
        cursor_y = _y[5]
        set_flag(0,4)
    } else if cursor_y = _y[5] {
        cursor_y = _y[6]
        set_flag(0,5)
    } else if cursor_y = _y[6] {
        cursor_y = _y[1]
        set_flag(0,0)
    }



} else if input_check_pressed("cancel") {
	audio_play_sound(sndback,0,0)
objNewGame.alarm[0] = 1
instance_destroy()
} else if input_check_pressed("accept") {
	audio_play_sound(sndchoose,0,0)
global.theroom = rmNaming
instance_create(0,0,objFadeOut)
instance_destroy()
}

cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}

show_debug_message("objFlavorSelectorOld");
