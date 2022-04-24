/// @description Return to previous room on exit

if(keyboard_check_pressed(vk_escape)) {
	if(global.how_to_play_return_room != rm_title) {
		audio_play_sound(snd_menu, 1, false);
		global.game_state = states.paused;
	}
	room_goto(global.how_to_play_return_room);	
}
