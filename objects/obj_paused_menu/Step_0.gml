/// @description Menu selection

if(global.game_state == states.paused) {
	// Get inputs
	up_key = keyboard_check_pressed(vk_up);
	down_key = keyboard_check_pressed(vk_down);
	enter_key = keyboard_check_pressed(vk_enter);

	// Move through the menu
	change = down_key - up_key;
	if (change != 0) {
		audio_play_sound(snd_menu, 1, false);	
	}
	pos += change;
	if(pos >= op_length) {
		pos = 0;
	}
	if(pos < 0) {
		pos = op_length - 1;
	}

	// Select option
	if(enter_key) {
		audio_play_sound(snd_menu, 1, false);
		switch(pos) {
			// Resume
			case 0:
				global.game_state = states.playing;
				if(sprite_exists(global.screen_shot)){
			        sprite_delete(global.screen_shot);
			    }
				instance_activate_all();
				loadSave(true, global.save_file_num);
				break;
			// How to play
			case 1:
				updateSave(global.save_file_num, false);
				alarm[1] = room_speed * 1;
				break;
			// Quit
			case 2:
				updateSave(global.save_file_num, true);
				alarm[0] = room_speed * 1;
				break;
		}
	}
}