/// @description Check if player is in the npc zone

if(obj_player.x > x - zone_x && obj_player.x < x + zone_x && obj_player.y > y - zone_y && obj_player.y < y + zone_y) {
	player_in_zone = true;
	if (global.current_npc_x == noone && global.current_npc_y == noone) {
		global.current_npc_x = x;
		global.current_npc_y = y;
		global.current_npc_zone_x = zone_x;
		global.current_npc_zone_y = zone_y;
	}
} else {
	player_in_zone = false;	
}

if(player_in_zone && keyboard_check_pressed(vk_space) && !global.show_npc_textbox && global.can_show_npc_textbox) {
	npcMessage(text);
}
