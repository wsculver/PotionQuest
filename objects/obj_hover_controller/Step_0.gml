/// @description Check if enter pressed at the end of the minigame

if (state != hover_states.playing) {
	if (keyboard_check_pressed(vk_enter)) {
		// TODO: Do win/loss stuff
		if (state == hover_states.win) {
			
		} else if (state == hover_states.lose) {
			
		}
		
		// Return to previous room
		global.minigame_done = true;
		room_goto(rm_desert);
	}
}
