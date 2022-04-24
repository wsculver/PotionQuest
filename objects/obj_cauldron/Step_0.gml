/// @description Check if player is in the npc zone

if(obj_player.x > x - zone_x && obj_player.x < x + zone_x && obj_player.y > y - zone_y && obj_player.y < y + zone_y) {
	player_in_zone = true;
} else {
	player_in_zone = false;
}

if(player_in_zone && keyboard_check_pressed(vk_space)) {
	if (global.hasIngredient_1 && global.hasIngredient_2 && global.hasIngredient_3 && global.hasIngredient_4) {
		npcMessage(successText);
		global.wonGame = true;
		alarm[1] = room_speed * 2;
	} else {
		npcMessage(failText);
	}
}
