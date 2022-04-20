/// @description Show current level and win/loss messages

draw_set_font(fnt_menu);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width / 2, 40, "Level: " + string(level));

if (state != hover_states.playing) {
	if (state == hover_states.win) {
		draw_set_font(fnt_gameover);
		draw_set_color(c_green);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(room_width / 2, room_height / 2 - 80, "YOU WIN!");
		draw_set_font(fnt_menu);
		draw_text(room_width / 2, room_height / 2 + 80, "Press Enter To Continue");
	} else if (state == hover_states.lose) {
		draw_set_font(fnt_gameover);
		draw_set_color(c_red);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(room_width / 2, room_height / 2 - 80, "YOU LOSE!");
		draw_set_font(fnt_menu);
		draw_text(room_width / 2, room_height / 2 + 80, "You have been deducted time for failing this minigame.\nYou will need to retry this minigame to obtain the ingredient.\nPress Enter To Continue");
	}
}
