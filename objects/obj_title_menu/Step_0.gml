/// @description Menu selection

if(global.game_state == states.title) {
	// Get inputs
	up_key = keyboard_check_pressed(vk_up);
	down_key = keyboard_check_pressed(vk_down);
	enter_key = keyboard_check_pressed(vk_enter);

	// Move through the menu
	pos += down_key - up_key;
	if(pos >= op_length) {
		pos = 0;
	}
	if(pos < 0) {
		pos = op_length - 1;
	}

	// Select option
	if(enter_key) {
		if(menu_number == 0) {
			switch(pos) {
				// Play
				case 0:
					menu_number = 1;
					pos = 0;
					op_length = array_length(option[menu_number]);
					break;
				// How to play
				case 1:
					global.how_to_play_return_room = room;
					room_goto(rm_how_to_play);
					break;
				// Quit
				case 2:
					game_end();
					break;
			}
		} else if(menu_number == 1) {
			// TODO: load save number
			switch(pos) {
				// Save 1
				case 0:
					global.save_file_num = 1;
					global.game_state = states.playing;
					room_goto(rm_main);
					if (global.load_save) {
						loadSave(false, global.save_file_num);
					}
					break;
				// Save 2
				case 1:
					global.save_file_num = 2;
					global.game_state = states.playing;
					room_goto(rm_main);
					if (global.load_save) {
						loadSave(false, global.save_file_num);
					}
					break;
				// Save 3
				case 2:
					global.save_file_num = 3;
					global.game_state = states.playing;
					room_goto(rm_main);
					if (global.load_save) {
						loadSave(false, global.save_file_num);
					}
					break;
				// Back
				case 3:
					menu_number = 0;
					pos = 0;
					op_length = array_length(option[menu_number]);
					break;
			}
		}
	}
}
