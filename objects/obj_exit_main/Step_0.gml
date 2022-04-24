/// @description Move to other biome when enter pressed
event_inherited();

if(player_in_zone && keyboard_check_pressed(vk_enter)) {
	// Move to room, should be in children
	global.prevRoom = rm_house;
	room_goto(rm_main);
	global.bridge_travel = true;
}
