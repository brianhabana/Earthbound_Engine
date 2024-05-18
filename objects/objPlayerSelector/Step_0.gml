/// @description Keyboard controls
if ok {
    if input_check_pressed("cancel") {
        if instance_exists(objBattleInv) {
            with objBattleInv { alarm[0] = 1 }
            global.itemtouse[objBattleController._turn] = -1
        } else if instance_exists(objSkillsMenu) {
            with objSkillsMenu { alarm[0] = 1 }
        } else {
            with objBattleController { alarm[5] = 1 }
        }
        audio_play_sound(sndback,0,0)
        instance_destroy();
    } else if input_check_pressed("accept") {
        global.target[objBattleController._turn] = tgt;
        if objBattleController._turn > global.pl_count-1 {
            with objTurnMaster { event_user(2) }
            turn = 1
            with objBattleController { in_battle = 1; ok = 1; }
        } else {
            with objBattleController { ok = 1; _turn++; cursor_x = _x[1]; cursor_y = _y[1] }
        }
        with objBattleInv { instance_destroy() }
        with objSkillsMenu { instance_destroy() }
        audio_play_sound(sndchoose,0,0)
        instance_destroy();
    } else if input_check_pressed("left") {
        if global.pl_count = 2 {
            if tgt = 1 { tgt = 2 }
            else { tgt = 1 }   
        } else if global.pl_count = 3 {
            if tgt = 1 { tgt = 3 } 
            else if tgt = 2 { tgt = 1 }
            else if tgt = 3 { tgt = 2 }
        } else if global.pl_count = 4 {
            if tgt = 1 { tgt = 4 } 
            else if tgt = 2 { tgt = 1 }
            else if tgt = 3 { tgt = 2 }
            else if tgt = 4 { tgt = 3 }
        }
    
        audio_play_sound(sndselect,0,0)
    } else if input_check_pressed("right") {
        if global.pl_count = 2 {
            if tgt = 1 { tgt = 2 }
            else { tgt = 1 }   
        } else if global.pl_count = 3 {
            if tgt = 1 { tgt = 2 } 
            else if tgt = 2 { tgt = 3 }
            else if tgt = 3 { tgt = 1 }
        } else if global.pl_count = 4 {
            if tgt = 1 { tgt = 2 } 
            else if tgt = 2 { tgt = 3 }
            else if tgt = 3 { tgt = 4 }
            else if tgt = 4 { tgt = 1 }
        }
    
        audio_play_sound(sndselect,0,0)
    } 
}

for (var i=1;i<global.pl_count+1;i++) {
    global.healthbar[i].y = global.healthbar[i].ystart
}
global.healthbar[tgt].y -= 8

show_debug_message("objPlayerSelector");