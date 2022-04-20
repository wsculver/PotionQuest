/// @description Remake player if game state is dead

if (global.mg_4_game_state == mg_4_states.dead) {
	global.mg_4_game_state = mg_4_states.playing;
	alarm[0] = room_speed * 1;
}

if (global.mg_4_game_state == mg_4_states.gameover) {
	instance_deactivate_all(1);
	
	if (keyboard_check_pressed(vk_enter)) {
		game_restart();
	}
}
