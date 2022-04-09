/// @description Check if player is in the npc zone

if(place_meeting(x, y, obj_player)) {
	player_in_zone = true;
} else {
	player_in_zone = false;
}
