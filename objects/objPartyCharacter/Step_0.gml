// Set the initial starting position with an offset in y-coordinate
y -= 20;

// Set the depth based on y-coordinate for proper drawing order
depth = -y;

// Check if the character is in contact with water
water = position_meeting(x, y, objWater);

// Check if the character is on stairs and determine the angle
if position_meeting(x, y, objStairs) {
    stairs_ang = -45; // Negative angle for one type of stairs
} else if position_meeting(x, y, objStairs2) {
    stairs_ang = 45; // Positive angle for another type of stairs
} else {
    stairs_ang = 0; // Default angle if not on stairs
}

// Determine the direction angle based on the character's facing direction
// Adjust the angle if on stairs
if ((direction >= 0 && direction < 45/2) || (direction >= 315+45/2 && direction < 360)) {
    dir = 0 - stairs_ang;
} else if (direction >= 45/2 && direction < 45+45/2) {
    dir = 45 - stairs_ang;
} else if (direction >= 45+45/2 && direction < 90+45/2) {
    dir = 90 - stairs_ang;
} // Continue for other direction ranges

// Normalize the direction angle to [0, 360) range
if dir < 0 {
    dir = 360 + dir;
} else if dir = 360 {
    dir = 0;
}

// Set the sprite based on the character's position and state
if !position_meeting(x, y, objLadder) {
    // Use walking sprite based on direction and player_index
    switch (player_index) {
        case 1:
            sprite_index = spr_party2_walking[dir, global.dead[player_index+1]];
            break;
        case 2:
            sprite_index = spr_party3_walking[dir, global.dead[player_index+1]];
            break;
        case 3:
            sprite_index = spr_party4_walking[dir, global.dead[player_index+1]];
            break;
        default:
            sprite_index = spr_walking[0]; // Fallback to default walking sprite
            break;
    }
} else {
    // Use ladder climbing sprite based on direction and player_index
    switch (player_index) {
        case 1:
            sprite_index = spr_party2_walking[dir, global.dead[player_index+1]];
            break;
        case 2:
            sprite_index = spr_party3_walking[dir, global.dead[player_index+1]]; 
            break;
        case 3:
            sprite_index = spr_party4_walking[dir, global.dead[player_index+1]]; 
            break;
        default:
            sprite_index = spr_walking[0]; // Fallback to default walking sprite
            break;
    }
}

// Adjust animation speed based on player speed and player_index
if instance_exists(objPlayer) {
    if objPlayer.speed = 0 {
        // If the player is not moving, freeze animation
        image_index = 0;
        image_speed = 0;
    } else {
        // Set animation speed based on player_index and global variables
        switch player_index {
            case 1:
                image_speed = 0.15 / (2 * global.s_numb[2] + 1);
                break;
            case 2:
                image_speed = 0.15 / (2 * global.s_numb[3] + 1);
                break;
            case 3:
                image_speed = 0.15 / (2 * global.s_numb[4] + 1);
                break;
        }
    }
}
