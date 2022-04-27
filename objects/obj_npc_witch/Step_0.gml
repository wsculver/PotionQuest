if(obj_player.x > x - zone_x && obj_player.x < x + zone_x && obj_player.y > y - zone_y && obj_player.y < y + zone_y) {
	player_in_zone = true;
	global.current_npc_x = x;
	global.current_npc_y = y;
	global.current_npc_zone_x = zone_x;
	global.current_npc_zone_y = zone_y;
} else {
	player_in_zone = false;
}

if(player_in_zone && keyboard_check_pressed(vk_space) && !global.show_npc_textbox 
	&& global.can_show_npc_textbox && room == rm_main) {
	npcMessage(text);
	global.witch_interaction = true;
}
if (global.witch_inter_done && room == rm_main) {
	instance_destroy(id);
}

if(player_in_zone && keyboard_check_pressed(vk_space) && !global.show_npc_textbox 
	&& global.can_show_npc_textbox && room == rm_house && global.hasIngredient_1
	&& global.hasIngredient_2 && global.hasIngredient_3 && global.hasIngredient_4) {
	npcMessage(houseTextWin);
} else if (player_in_zone && keyboard_check_pressed(vk_space) && !global.show_npc_textbox 
	&& global.can_show_npc_textbox && room == rm_house) {
	npcMessage(houseText);
}
