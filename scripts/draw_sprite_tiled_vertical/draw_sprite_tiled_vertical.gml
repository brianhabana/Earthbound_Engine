/// @description draw_sprite_tiled_vertical(sprite, image, x, y);
/// @param sprite
/// @param  image
/// @param  x
/// @param  y
function draw_sprite_tiled_vertical(argument0, argument1, argument2, argument3) {
	var sprite_start, sprite_end, sprite_current, sprite_step;

	// Retrieve sprite properties        
	sprite_step  = sprite_get_height(argument0);
	sprite_start = __view_get( e__VW.YView, 0 )+((argument3-__view_get( e__VW.YView, 0 )) mod sprite_step)-sprite_step;
	sprite_end   = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+sprite_step;
    
	for (var sprite_current = sprite_start; sprite_current <= sprite_end; sprite_current += sprite_step)
	    draw_sprite(argument0, argument1, argument2, sprite_current);   




}
