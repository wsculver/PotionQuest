/// @description Draw menu

if(global.game_state == states.title) {
	draw_set_font(fnt_menu);
	
	height = (op_border * 2) + string_height(option[menu_number][0]) + ((op_length - 1) * op_space);
	// Find widest string
	var maxWidth = 0;
	for (var i = 0; i < array_length(option[menu_number]); ++i) {
		var tempWidth = string_width(option[menu_number][i]);
		if (tempWidth > maxWidth) {
			maxWidth = tempWidth;
		}
	}
	width = (op_border * 2) + maxWidth;
	// Position menu
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
		draw_text_color(x + op_border, y + op_border + (op_space * i), option[menu_number][i], color, color, color, color, 1);	
	}
}
