/// @description Remake player if game state is dead

if (global.mg_4_game_state == mg_4_states.dead) {
	global.mg_4_game_state = mg_4_states.playing;
	alarm[0] = room_speed * 1;
}

if (global.mg_4_game_state != mg_4_states.playing) {
	if (keyboard_check_pressed(vk_enter)) {
		// TODO: Do win/loss stuff
		if (global.mg_4_game_state == mg_4_states.win) {
			
		} else if (global.mg_4_game_state == mg_4_states.lose) {
			// Decrease game time as punishment
			if (obj_controller.alarm[0] <= global.minigame_punishment) {
				global.day += 1;
				remaining_time = ((global.minigame_punishment) - obj_controller.alarm[0]);
				obj_controller.alarm[0] = (room_speed * 3600) - remaining_time;
			} else {
				obj_controller.alarm[0] -= global.minigame_punishment;
			}
			obj_controller.alarm[1] -= (global.minigame_punishment);
		}
		
		// Return to previous room
		global.minigame_done = true;
		global.game_state = states.playing;
		room_goto(rm_ocean);
	}
}
