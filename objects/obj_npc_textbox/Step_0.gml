/// @description Switch page/close on space press

if(global.show_npc_textbox) {
	num_pages = array_length(text);
	
	if(can_switch_page) {
		if(keyboard_check_pressed(vk_space)) {
			// Switch pages
			if(current_page < num_pages - 1) {
				current_page++;
			}
			// Close textbox and reset text
			else {
				global.show_npc_textbox = false;
				text = noone;
				current_page = 0;
				can_switch_page = false;
				alarm[0] = room_speed * 0.1;
			}
		}
	}
} 
