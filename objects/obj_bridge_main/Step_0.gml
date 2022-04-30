/// @description Move to other biome when enter pressed
event_inherited();

if(player_in_zone && keyboard_check_pressed(vk_enter) && global.game_state == states.playing) {
	// Move to room, should be in children
	global.prevRoom = biome.tundra;
	if (room  == rm_forest) {
		global.prevRoom = biome.forest;
	} else if (room  == rm_ocean) {
		global.prevRoom = biome.ocean;
	} else if (room  == rm_desert) {
		global.prevRoom = biome.desert;
	}
	room_goto(rm_main);
	global.bridge_travel = true;
	audio_play_sound(snd_room_change, 1, false);
}
