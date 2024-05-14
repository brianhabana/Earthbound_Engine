draw_set_alpha(1)
draw_set_font(global.thenfont)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_window(__view_get( e__VW.XView, 0 )+72+v_offset,__view_get( e__VW.YView, 0 )+32,30,19)
draw_window(__view_get( e__VW.XView, 0 )+72+v_offset,__view_get( e__VW.YView, 0 )+184,30,6)

if storage_mode or shop_mode {
    draw_window(__view_get( e__VW.XView, 0 )+8+v_offset,__view_get( e__VW.YView, 0 )+8,7,4)
    if storage_mode {
        draw_text(__view_get( e__VW.XView, 0 )+20+v_offset,__view_get( e__VW.YView, 0 )+18,string_hash_to_newline("Storing..."))
    } else {
        draw_text(__view_get( e__VW.XView, 0 )+20+v_offset,__view_get( e__VW.YView, 0 )+18,string_hash_to_newline("Selling..."))
    }
}

//its looking for an item to be in these slots, but there is no item assigned to them!

draw_text(_x[1],_y[1],string_hash_to_newline(eqp[1]+global.item[(inv[1]>0 ? inv[1] : 0),1]))
draw_text(_x[2],_y[1],string_hash_to_newline(eqp[2]+global.item[(inv[2]>0 ? inv[2] : 0),1]))
draw_text(_x[1],_y[2],string_hash_to_newline(eqp[3]+global.item[(inv[3]>0 ? inv[3] : 0),1]))
draw_text(_x[2],_y[2],string_hash_to_newline(eqp[4]+global.item[(inv[4]>0 ? inv[4] : 0),1]))
draw_text(_x[1],_y[3],string_hash_to_newline(eqp[5]+global.item[(inv[5]>0 ? inv[5] : 0),1]))
draw_text(_x[2],_y[3],string_hash_to_newline(eqp[6]+global.item[(inv[6]>0 ? inv[6] : 0),1]))
draw_text(_x[1],_y[4],string_hash_to_newline(eqp[7]+global.item[(inv[7]>0 ? inv[7] : 0),1]))
draw_text(_x[2],_y[4],string_hash_to_newline(eqp[8]+global.item[(inv[8]>0 ? inv[8] : 0),1]))
draw_text(_x[1],_y[5],string_hash_to_newline(eqp[9]+global.item[(inv[9]>0 ? inv[9] : 0),1]))
draw_text(_x[2],_y[5],string_hash_to_newline(eqp[10]+global.item[(inv[10]>0 ? inv[10] : 0),1]))
draw_text(_x[1],_y[6],string_hash_to_newline(eqp[11]+global.item[(inv[11]>0 ? inv[11] : 0),1]))
draw_text(_x[2],_y[6],string_hash_to_newline(eqp[12]+global.item[(inv[12]>0 ? inv[12] : 0),1]))
draw_text(_x[1],_y[7],string_hash_to_newline(eqp[13]+global.item[(inv[13]>0 ? inv[13] : 0),1]))
draw_text(_x[2],_y[7],string_hash_to_newline(eqp[14]+global.item[(inv[14]>0 ? inv[14] : 0),1]))
draw_text(_x[1],_y[8],string_hash_to_newline(eqp[15]+global.item[(inv[15]>0 ? inv[15] : 0),1]))
draw_text(_x[2],_y[8],string_hash_to_newline(eqp[16]+global.item[(inv[16]>0 ? inv[16] : 0),1]))
draw_text(_x[1],_y[9],string_hash_to_newline(eqp[17]+global.item[(inv[17]>0 ? inv[17] : 0),1]))
draw_text(_x[2],_y[9],string_hash_to_newline(eqp[18]+global.item[(inv[18]>0 ? inv[18] : 0),1]))
draw_text(_x[1],_y[10],string_hash_to_newline(eqp[19]+global.item[(inv[19]>0 ? inv[19] : 0),1]))
draw_text(_x[2],_y[10],string_hash_to_newline(eqp[20]+global.item[(inv[20]>0 ? inv[20] : 0),1]))

draw_set_font(global.thenfont2)

if !instance_exists(objInvUseMenu) {
    draw_text_ext(_x[1],y+190,string_hash_to_newline(global.item[num,2]),12,300)
} else {
    if objInvUseMenu.message != "" {
        draw_text_ext(_x[1],y+190,string_hash_to_newline(objInvUseMenu.message),12,300)
    } else {
        draw_text_ext(_x[1],y+190,string_hash_to_newline(global.item[num,2]),12,300)
    }
}

draw_sprite(spr_cursor,cursor_image_index,cursor_x-3,cursor_y+8)

switch global.pl_count {
    case 0: 
        draw_sprite(sprPortraits,3,__view_get( e__VW.XView, 0 )+72+v_offset,y+8);
        draw_sprite(sprPortraits,5,__view_get( e__VW.XView, 0 )+72+v_offset+23,y+8);
        break;
    case 1:
        draw_sprite(sprPortraits,global.gender*6,__view_get( e__VW.XView, 0 )+72+v_offset,y+8);
        draw_sprite(sprPortraits,5,__view_get( e__VW.XView, 0 )+72+v_offset+23,y+8);
        break;
    case 2:
        draw_sprite(sprPortraits,global.gender*6,__view_get( e__VW.XView, 0 )+72+v_offset,y+8);
        draw_sprite(sprPortraits,1,__view_get( e__VW.XView, 0 )+72+v_offset+23,y+8);
        draw_sprite(sprPortraits,5,__view_get( e__VW.XView, 0 )+72+v_offset+46,y+8);
        break;
    case 3:
        draw_sprite(sprPortraits,global.gender*6,__view_get( e__VW.XView, 0 )+72+v_offset,y+8);
        draw_sprite(sprPortraits,1,__view_get( e__VW.XView, 0 )+72+v_offset+23,y+8);
        draw_sprite(sprPortraits,2,__view_get( e__VW.XView, 0 )+72+v_offset+46,y+8);
        draw_sprite(sprPortraits,5,__view_get( e__VW.XView, 0 )+72+v_offset+69,y+8);
        break;
    case 4:
        draw_sprite(sprPortraits,global.gender*6,__view_get( e__VW.XView, 0 )+72+v_offset,y+8);
        draw_sprite(sprPortraits,1,__view_get( e__VW.XView, 0 )+72+v_offset+23,y+8);
        draw_sprite(sprPortraits,2,__view_get( e__VW.XView, 0 )+72+v_offset+46,y+8);
        draw_sprite(sprPortraits,3,__view_get( e__VW.XView, 0 )+72+v_offset+69,y+8);
        draw_sprite(sprPortraits,5,__view_get( e__VW.XView, 0 )+72+v_offset+92,y+8);
        break;
}

draw_sprite(sprInvSel,0,__view_get( e__VW.XView, 0 )+72+cursor_x2,y+8)
