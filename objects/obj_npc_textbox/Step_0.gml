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
				if (global.witch_interaction && room == rm_main) {
					global.witch_interaction = false;
					global.witch_inter_done = true;
				}
			}
		}
	}
} 

// When the player leaves the current NPC zone hide the textbox
if (global.current_npc_x != noone && global.current_npc_y != noone) {
	if (global.game_state == states.title || !(obj_player.x > global.current_npc_x - global.current_npc_zone_x && obj_player.x < global.current_npc_x + global.current_npc_zone_x && obj_player.y > global.current_npc_y - global.current_npc_zone_y && obj_player.y < global.current_npc_y + global.current_npc_zone_y)) {
		global.show_npc_textbox = false;
		text = noone;
		current_page = 0;
		can_switch_page = false;
		alarm[0] = room_speed * 0.1;
		
		global.current_npc_x = noone;
		global.current_npc_y = noone;
		global.current_npc_zone_x = noone;
		global.current_npc_zone_y = noone;
	}
}
