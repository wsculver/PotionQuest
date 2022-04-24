/// @description 

if (state != maze_states.playing) {
	alarm[0] = time_left;
	
	if (keyboard_check_pressed(vk_enter)) {
		// TODO: Do win/loss stuff
		if (state == maze_states.win) {
			global.hasIngredient_4 = 1;
		} else if (state == maze_states.lose) {
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
		global.in_minigame = false;
		room_goto(rm_forest);
	}
	
	instance_deactivate_object(obj_player);
} else {
	time_left = alarm[0];
}
