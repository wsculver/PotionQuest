/// @description Draw the textbox

if(global.show_npc_textbox) {
	// Position textbox
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
	y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - height - 20;

	// Draw textbox background
	draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);

	// Draw text for current page
	draw_set_font(fnt_menu);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_text_ext(x + text_border, y + text_border, text[current_page], text_space, width - (2 * text_border));	
	
	// Draw arrow if there are more pages
	if(current_page < num_pages - 1) {
		if (show_arrows) {
			draw_sprite_ext(spr_next_arrows, 0, x + width - 25, y + height - 20, 0.4, 0.4, 0, c_white, 1);
		}
	}
	
	
}