/// @description Check if player is in the npc zone

if(obj_player.x > x - zone_x && obj_player.x < x + zone_x && obj_player.y > y - zone_y && obj_player.y < y + zone_y) {
	player_in_zone = true;
} else {
	player_in_zone = false;
}

if(player_in_zone && keyboard_check_pressed(vk_enter) && global.game_state == states.playing) {
	// Move to room, should be in children
	room_goto(rm_house);
	
	global.show_npc_textbox = false;
	obj_npc_textbox.text = noone;
	obj_npc_textbox.current_page = 0;
	obj_npc_textbox.can_switch_page = false;
	obj_npc_textbox.alarm[0] = room_speed * 0.1;
		
	global.current_npc_x = noone;
	global.current_npc_y = noone;
}
