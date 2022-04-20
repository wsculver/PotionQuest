/// @description Show timer and win/loss messages

var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

var minutes = int64(alarm[0] / (60 * room_speed));
var seconds = int64((alarm[0] % (60.0 * room_speed)) / 60);

draw_set_font(fnt_menu);
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(cam_w / 2, 40, string(minutes) + ":" + string(seconds));

if (state != maze_states.playing) {	
	// Draw darkened background
	draw_sprite_ext(spr_dark_background, -1, 0, 0, 1, 1, 0, c_white, 0.9);
	
	if (state == maze_states.win) {
		draw_set_font(fnt_gameover);
		draw_set_color(c_green);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(cam_w / 2, cam_h / 2 - 80, "YOU WIN!");
		draw_set_font(fnt_menu);
		draw_text(cam_w / 2, cam_h / 2 + 50, "Press Enter To Continue");
	} else if (state == maze_states.lose) {
		draw_set_font(fnt_gameover);
		draw_set_color(c_red);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(cam_w / 2, cam_h / 2 - 80, "YOU LOSE!");
		draw_set_font(fnt_menu);
		draw_text(cam_w / 2, cam_h / 2 + 50, "You have been deducted time for failing this minigame.\nYou will need to retry this minigame to obtain the ingredient.\nPress Enter To Continue");
	}
}
