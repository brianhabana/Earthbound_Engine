if instance_number(objPlayer) > 1 { instance_destroy(); exit }

dir = 270;
direction = dir;
//image_index = 0;

walk_speed = 2;
water_speed = 1;
run_speed = walk_speed;
canmove = 1;
running = 0;
water = 0;
ladder = 0;
can_splash = true;
stairs_ang = 0;
invincible = 0;
invertedcontrols = 0;
shadow = 1
player = 1
dx = 0
dy = 0
key_direction = 270;
//face = "DOWN";

for(var c = 0;c <= 5*100;c++){
    prevx[c] = x
    prevy[c] = y
    prevd[c] = direction
}

//Sprites
//Alive
spr_walking[0,0] =    sprRiver_r
spr_walking[45,0] =   sprRiver_ur
spr_walking[90,0] =   sprRiver_u
spr_walking[135,0] =  sprRiver_ul
spr_walking[180,0] =  sprRiver_l
spr_walking[225,0] =  sprRiver_dl
spr_walking[270,0] =  sprRiver_d
spr_walking[315,0] =  sprRiver_dr
//Dead
spr_walking[0,1] =    sprRiver_d
spr_walking[45,1] =   sprRiver_ul
spr_walking[90,1] =   sprRiver_u
spr_walking[135,1] =  sprRiver_ur
spr_walking[180,1] =  sprRiver_r
spr_walking[225,1] =  sprRiver_dr
spr_walking[270,1] =  sprRiver_d
spr_walking[315,1] =  sprRiver_dl
//Climbing
spr_climbing[0] =   sprProtag_f_c


