/// @description Move to next page depending on the answer

if(global.game_state == states.riddle && keyboard_check_pressed(vk_enter)) {
	if(riddle_state == status.locked) {
		if(instance_exists(textbox_object)) {
			if(textbox_object.text != "") {
				if(string_lower(textbox_object.text) == answer) {
					riddle_state = status.unlocked;
				} else {
					audio_play_sound(snd_fail, 1, false);
					// Decrease game time as punishment
					if (obj_controller.alarm[0] <= global.riddle_punishment) {
						global.day += 1;
						remaining_time = ((global.riddle_punishment) - obj_controller.alarm[0]);
						obj_controller.alarm[0] = (room_speed * 3600) - remaining_time;
					} else {
						obj_controller.alarm[0] -= global.riddle_punishment;
					}
					obj_controller.alarm[1] -= (global.riddle_punishment);
					riddle_state = status.incorrect;
				}
			} else {
				global.game_state = states.playing;
			}
		}
	} else if(riddle_state == status.incorrect) {
		global.game_state = states.playing;
	} else if(riddle_state == status.unlocked) {
		riddle_state = status.minigame_rules;
	} else if(riddle_state == status.minigame_rules) {
		global.game_state = states.playing;
		global.in_minigame = true;
		room_goto(minigame_room);
	}
}
