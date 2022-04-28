/// @description Draw menu

if(global.game_state == states.paused) {
	// Draw screenshot
	draw_sprite_ext(global.screen_shot, -1, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, 1);
	
	// Draw darkened background
	draw_sprite_ext(spr_dark_background, -1, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, 0.5);
	
	draw_set_font(fnt_menu);
	// Calculate width and height of menu
	var new_width = 0;
	for(var i = 0; i < op_length; i++) {
		var op_width = string_width(option[i]);
		new_width = max(new_width, op_width);
	}
	width = (op_border * 2) + new_width;
	height = (op_border * 2) + string_height(option[0]) + ((op_length - 1) * op_space);

	// Center menu
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
	y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

	// Draw menu background
	draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);

	// Draw options
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	for(var i = 0; i < op_length; i++) {
		var color = c_white;
		if(pos == i) {
			color = c_yellow;
		}
		draw_text_color(x + op_border, y + op_border + (op_space * i), option[i], color, color, color, color, 1);	
	}
	
	// Draw paused text
	draw_set_font(fnt_paused);
	draw_set_color(c_red);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2, camera_get_view_y(view_camera[0]) + 75, "PAUSED");
	
}
