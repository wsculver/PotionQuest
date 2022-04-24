/// @description Check if enter pressed at the end of the minigame

if (state != hover_states.playing) {
	if (keyboard_check_pressed(vk_enter)) {
		// Do win/loss stuff
		if (state == hover_states.win) {
			global.hasIngredient_3 = 1;
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
		room_goto(rm_desert);
	}
}
