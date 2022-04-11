/// @description Draw the riddle overlay

if(global.game_state == states.riddle) {
	// Draw darkened background
	draw_sprite_ext(spr_dark_background, -1, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, 0.5);
	
	// Position overlay
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
	y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

	// Draw riddle background
	draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);

	// Draw the correct page
	if(riddle_state == status.locked) {
		// Draw riddle
		draw_set_font(fnt_riddle);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
		draw_text_ext(x + width / 2, y + text_border, riddle, text_space, width - (2 * text_border));	
	} else {
		if(instance_exists(textbox_object)) {
			instance_destroy(textbox_object);
		}
		
		if(riddle_state == status.incorrect) {
			var incorrect_text = "Incorrect!\nYou have been deducted time for a wrong answer. Look around the island for hints and try again.\nPress enter to continue.";
			draw_set_font(fnt_riddle_incorrect);
			draw_set_halign(fa_center);
			draw_set_valign(fa_center);
			draw_set_color(c_white);
			draw_text_ext(x + width / 2, y + height / 2, incorrect_text, text_space * 1.5, width - (2 * text_border));
		} else if(riddle_state == status.unlocked) {
			var correct_text = "Correct!\nYou have unlocked the vault and will now have to pass a minigame to obtain an ingredient.\nPress enter to continue.";
			draw_set_font(fnt_riddle_incorrect);
			draw_set_halign(fa_center);
			draw_set_valign(fa_center);
			draw_set_color(c_white);
			draw_text_ext(x + width / 2, y + height / 2, correct_text, text_space * 1.5, width - (2 * text_border));
		} else if(riddle_state == status.minigame_rules) {
			draw_set_font(fnt_riddle);
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			draw_set_color(c_white);
			draw_text_ext(x + width / 2, y + text_border, minigame_rules, text_space, width - (2 * text_border));	
		}
	}
} else {
	if(instance_exists(textbox_object)) {
		instance_destroy(textbox_object);
	}
}
