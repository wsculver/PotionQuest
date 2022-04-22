/// @description Move to other biome when enter pressed
event_inherited();

if(player_in_zone && keyboard_check_pressed(vk_enter)) {
	// Move to room, should be in children
	room_goto(rm_forest);
	audio_play_sound(snd_room_change, 1, false);
}
