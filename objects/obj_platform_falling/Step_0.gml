/// @description Once player stands on it, it should fall,
/// disappear, and then reappear

if (place_meeting(x, y-1, obj_player_mg_4) && !triggered) {
	triggered = true;
	alarm[0] = room_speed * 1;
}
