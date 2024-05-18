/// @description Keyboard controls

if input_check_pressed("cancel") {
    audio_play_sound(sndback,0,0)
    objNewGame.alarm[0] = 1
    global.flavor = 0
    instance_destroy()
} else if input_check_pressed("accept") {
    audio_play_sound(sndchoose,0,0)
    global.theroom = rmNaming
    instance_create(0,0,objFadeOut)
    instance_destroy()
} else if input_check_pressed("up") {
    audio_play_sound(sndselect2,0,0)
    if cursor_y = _y[1] {
        cursor_y = _y[3]
        global.gender = choose(0,1)
    } else if cursor_y = _y[2] {
        cursor_y = _y[1]
        global.gender = 0
    } else if cursor_y = _y[3] {
        cursor_y = _y[2]
        global.gender = 1
    }
} else if input_check_pressed("down") {
    audio_play_sound(sndselect2,0,0)
    if cursor_y = _y[1] {
        cursor_y = _y[2]
        global.gender = 1
    } else if cursor_y = _y[2] {
        cursor_y = _y[3]
        global.gender = choose(0,1)
    } else if cursor_y = _y[3] {
        cursor_y = _y[1]
        global.gender = 0
    }
}


cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}
show_debug_message("objFlavorSelector");


