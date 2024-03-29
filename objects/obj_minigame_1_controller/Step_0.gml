/// @description Insert description here
// You can write your code in this editor

if (state == mg_1_states.playing) {
	if (instance_number(obj_balloon) == 0) {
		audio_play_sound(snd_goal, 1, false);
		state = mg_1_states.win;
		// Code to give player ingredient
	} else {
		for (var i = 0; i < instance_number(obj_balloon); ++i) {
			if (instance_find(obj_balloon, i).y >= room_height) {
				audio_play_sound(snd_fail, 1, false);
				state = mg_1_states.lose;
				break;
			}
		}
	}
}

if (state != mg_1_states.playing) {
	if (keyboard_check_pressed(vk_enter)) {
		// Do win/loss stuff
		if (state == hover_states.win) {
			global.hasIngredient_1 = 1;
		} else if (state == hover_states.lose) {
			// Decrease game time as punishment
			if (obj_controller.alarm[0] <= global.minigame_punishment) {
				global.day += 1;
				remaining_time = ((global.minigame_punishment) - obj_controller.alarm[0]);
				obj_controller.alarm[0] = (room_speed * 3600) - remaining_time;
			} else {
				obj_controller.alarm[0] -= global.minigame_punishment;
			}
			
			if (obj_controller.alarm[1] <= global.minigame_punishment) {
				obj_controller.alarm[1] = room_speed * 1;	
			} else {
				obj_controller.alarm[1] -= (global.minigame_punishment);
			}
		}
		
		// Return to previous room
		global.minigame_done = true;
		global.in_minigame = false;
		room_goto(rm_tundra);
	}
}
