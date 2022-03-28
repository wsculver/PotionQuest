/// @description Check if player is in the npc zone

if(place_meeting(x, y, obj_player)) {
	player_in_zone = true;
} else {
	player_in_zone = false;
}

if(player_in_zone && keyboard_check_pressed(vk_space) && !global.show_npc_textbox && global.can_show_npc_textbox) {
	npcMessage(text);
}