/// @description Draw days and time and day change display

// Get camera properties
if (global.game_state == states.playing || global.game_state == states.paused) {
	//var cam_w = display_get_gui_width();
	//var cam_h = display_get_gui_height();
	var cam = view_camera[0];
	var cam_w = camera_get_view_width(cam);
	var cam_h = camera_get_view_height(cam);
	centX = cam_w / 2;
	centY = cam_h / 2;

	if (showDayOverlay) {
		draw_set_font(fnt_menu);
		draw_set_color(c_navy);
		draw_text(centX, centY, "Day " + string(global.day));
	}
	
	draw_set_font(fnt_mesg);
	
	minutes = int64(alarm[0] / (60 * room_speed));
	seconds = int64((alarm[0] % (60.0 * room_speed)) / 60);
	//gameMin = int64(alarm[1] / (60 * room_speed));
	//gameSec = int64((alarm[1] % (60.0 * room_speed)) / 60);
	draw_set_color(c_black);
	draw_text(cam_w - 100, 10, "Day " + string(global.day));
	draw_text(cam_w - 250, 40, "Time Remaining Today: " + string(minutes) + ":" + string(seconds));
	//draw_text(cam_w - 250, 70, "Game Time Remaining: " + string(gameMin) + ":" + string(gameSec));
}