/// @description Draw inventory menu

if(global.game_state == states.inventory) {	
	// Draw darkened background
	draw_sprite_ext(spr_dark_background, -1, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, 0.5);
	
	// Center menu
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
	y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2 - 132;

	// Draw menu background
	draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);
	if (global.hasIngredient_1 == 1) {
		draw_sprite(spr_ingredient_1, 0, x + 66, y + 66);
	}
	if (global.hasIngredient_2 == 1) {
		draw_sprite(spr_ingredient_2, 0, x + (129*1) + 66, y + 66);
	}
	if (global.hasIngredient_3 == 1) {
		draw_sprite(spr_ingredient_3, 0, x + (129*2) + 66, y + 66);
	}
	if (global.hasIngredient_4 == 1) {
		draw_sprite(spr_ingredient_4, 0, x + (129*3) + 66, y + 66);
	}
	
}