/// @description Draw inventory menu

if(global.game_state == states.inventory) {	
	// Draw darkened background
	draw_sprite_ext(spr_dark_background, -1, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, 0.5);
	
	// Center menu
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
	y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2 - 132;

	// Draw menu background
	draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);
}