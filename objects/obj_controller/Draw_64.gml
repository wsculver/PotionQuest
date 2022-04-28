/// @description Draw days and time and day change display

var cam = view_camera[0];
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Get camera properties
if ((global.game_state == states.playing || global.game_state == states.paused || global.game_state == states.inventory) && !global.in_minigame) {
	//var cam_w = display_get_gui_width();
	//var cam_h = display_get_gui_height();
	centX = cam_w / 2;
	centY = cam_h / 2;

	if (showDayOverlay) {
		draw_set_font(fnt_menu);
		draw_set_color(c_navy);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_text(centX, centY, "Day " + string(global.day));
	}
	
	draw_set_font(fnt_mesg);
	
	minutes = int64(alarm[0] / (60 * room_speed));
	seconds = int64((alarm[0] % (60.0 * room_speed)) / 60);
	//gameMin = int64(alarm[1] / (60 * room_speed));
	//gameSec = int64((alarm[1] % (60.0 * room_speed)) / 60);
	draw_set_color(c_black);
	draw_rectangle(0, 0, cam_w, 40, false);
	draw_set_color(c_white);
	draw_set_font(fnt_mesg);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(20, 10, "Day " + string(global.day) + "/7");
	if (seconds < 10) {
		draw_text(cam_w - 230, 10, "Time Remaining Today: " + string(minutes) + ":0" + string(seconds));
	} else {
		draw_text(cam_w - 230, 10, "Time Remaining Today: " + string(minutes) + ":" + string(seconds));
		//draw_text(cam_w - 250, 70, "Game Time Remaining: " + string(gameMin) + ":" + string(gameSec));
	}
}

if (global.game_state == states.gameover) {
	if (global.wonGame) {
		draw_set_font(fnt_gameover);
		draw_set_color(c_green);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(cam_w / 2, cam_h / 2 - 80, "YOU WIN!");
		draw_set_font(fnt_menu);
		draw_text(cam_w / 2, cam_h / 2 + 50, "Press Enter to close the game.");
		draw_text(cam_w / 2, cam_h / 2 + 150, "Press D to erase this savefile.");
	} else {
		draw_set_font(fnt_gameover);
		draw_set_color(c_red);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(cam_w / 2, cam_h / 2 - 80, "YOU LOSE!");
		draw_set_font(fnt_menu);
		draw_text(cam_w / 2, cam_h / 2 + 50, "Press Enter to close the game.");
		draw_text(cam_w / 2, cam_h / 2 + 150, "Press D to erase this savefile.");
	}
}
