action_inherited();
//Basic info
e_name          = "Boss Enemy"
e_pron          = "it";
e_pron_pos      = "its";
e_pron_obj      = "its";
e_pron_self     = "itself";
e_art           = ""
e_fin           = upper(e_art)+e_name+" dissolved,{ leaving nothing but a putrid stench behind!#@ You spray the place with your Blade(tm) air deodoriser."
e_welcome[1]    = "You approach "+e_art+e_name+"!"
e_welcome[2]    = "You approach "+e_art+e_name+" and "+e_pron_pos+" cohort!"
e_welcome[3]    = "You approach "+e_art+e_name+" and "+e_pron_pos+" cohorts!"
e_description   = "Description."
e_music         = -1//bgmVoidSoot
bg              = 5     // Backgrounds (-1 means no BG)
bg2             = -1
e_last          = 0     // If it's 1, enemies will do action 15 upon death

//Stats
e_hp            = 220;
e_pp            = 20;
e_off           = 17;
e_def           = 16;
e_guts          = 0;
e_speed         = 12;
e_luck          = 1;
e_exp           = 200;
e_money         = 160;
e_drop          = 3;
e_droprate      = 20;   //Out of 100.
e_log_id        = 5;

//Resistances
fire_resistance      = 0   
freeze_resistance    = 4
thunder_resistance   = 4 
hypno_resistance     = 1
paralysis_resistance = 0
flash_resistance     = 0

//Status effects
poison          = 0;
infected        = 0;
crying          = 0;
radiation       = 0;
numb            = 0;
solids          = 0;
strange         = 0;
shocked         = 0;
asleep          = 0;
cantconcentrate = 0;
numb_timer       = 5; sleep_timer       = 5;
conc_timer      = 3;

//Shields
has_shield      = 0;
has_pshield     = 0;
has_psishield   = 0;
has_psipshield  = 0;
shieldlife      = 3;

//Stat related stuff that shouldn't be changed
e_realoff       = e_off;
e_realdef       = e_def;
e_realguts      = e_guts;
e_grd           = 1;
can_turn_around = 0;

txtmsg_ok = false
a = noone
text[0] = "You're goin' down, punk!"
text[1] = "turn 2"

_turn = 0


