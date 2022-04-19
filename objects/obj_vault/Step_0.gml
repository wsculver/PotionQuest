/// @description Check if player is in the vault zone

if(obj_player.x > x - zone_x && obj_player.x < x + zone_x && obj_player.y > y - zone_y && obj_player.y < y + zone_y) {
	player_in_zone = true;
} else {
	player_in_zone = false;
}

if(player_in_zone && keyboard_check_released(vk_space) && global.game_state == states.playing) {
	global.game_state = states.riddle;
	obj_riddle.riddle = riddle;
	obj_riddle.answer = answer;
	obj_riddle.minigame_room = minigame_room;
	obj_riddle.minigame_rules = minigame_rules;
	obj_riddle.riddle_state = status.locked;
	// Create the textbox object
	var textbox_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 + 60;
	var textbox_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 + 255;
	obj_riddle.textbox_object = instance_create_depth(textbox_x, textbox_y, -100, obj_input_textbox);
}
