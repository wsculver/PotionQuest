var cam_w = display_get_gui_width();
var cam_h = display_get_gui_height();

draw_set_color(c_black);
draw_rectangle(0, 0, room_width, 40, false);
draw_set_color(c_white);
draw_set_font(fnt_mesg);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(20, 10, "Score: " + string(score));
draw_text(cam_w - 100, 10, "Lives: " + string(global.mg_4_lives));

draw_set_font(fnt_gameover);
if (global.mg_4_game_state == mg_4_states.win) {
	draw_set_font(fnt_gameover);
	draw_set_color(c_green);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(cam_w / 2, cam_h / 2 - 80, "YOU WIN!");
	draw_set_font(fnt_menu);
	draw_text(cam_w / 2, cam_h / 2 + 50, "Press Enter To Continue");
} else if (global.mg_4_game_state == mg_4_states.lose) {
	draw_set_font(fnt_gameover);
	draw_set_color(c_red);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(cam_w / 2, cam_h / 2 - 80, "YOU LOSE!");
	draw_set_font(fnt_menu);
	draw_text(cam_w / 2, cam_h / 2 + 50, "You have been deducted time for failing this minigame.\nYou will need to retry this minigame to obtain the ingredient.\nPress Enter To Continue");
}
