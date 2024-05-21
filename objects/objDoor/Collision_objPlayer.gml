global.thex = _x;
global.they = _y;
global.theroom = _room;
global.thedir = direction; // Use the door's direction to set the player's facing direction

// Prevent the player from moving during the transition
with other {
    canmove = 0;
    speed = 0;
}

// Create the fade-out effect instance
var a = instance_create(0, 0, objFadeOut);
a.effect_leave = effect_leave;
a.effect_enter = effect_enter;
a.fadespd = effect_speed;

// Destroy the door instance after setting up the transition
instance_destroy();
