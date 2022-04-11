/// @description Insert description here
// You can write your code in this editor
if (instance_number(obj_balloon) == 0) {
	state = mg_1_states.win;
	// Code to give player ingredient
} else {
	// TODO: Add code to go through all the balloons and
	// check if they have reached the bottom of the screen
	for (var i = 0; i < instance_number(obj_balloon); ++i) {
		if (instance_find(obj_balloon, i).y >= room_height) {
			state = mg_1_states.lose;
			break;
		}
	}
}

if (state != mg_1_states.playing) {
	if (keyboard_check_pressed(vk_enter)) {
		// TODO: Do win/loss stuff
		if (state == hover_states.win) {
			
		} else if (state == hover_states.lose) {
			
		}
		
		// Return to previous room
		global.minigame_done = true;
		room_goto(rm_tundra);
	}
}
