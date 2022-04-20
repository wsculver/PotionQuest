/// @description Insert description here
// You can write your code in this editor

var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

if (state != mg_1_states.playing) {
	if (state == mg_1_states.win) {
		// Show win message
		draw_set_font(fnt_gameover);
		draw_set_color(c_green);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(cam_w / 2,  cam_h / 2, "YOU WIN!");
		draw_set_font(fnt_menu);
		draw_text(cam_w / 2, cam_h / 2 + 80, "Press Enter To Continue");
	} else if (state == mg_1_states.lose) {
		// Show lose message
		draw_set_font(fnt_gameover);
		draw_set_color(c_red);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(cam_w / 2,  cam_h / 2, "YOU LOSE");
		draw_set_font(fnt_menu);
		draw_text(cam_w / 2, cam_h / 2 + 80, "You have been deducted time for failing this minigame.\nYou will need to retry this minigame to obtain the ingredient.\nPress Enter To Continue");
	}
}
