/// @description Day timer
if (global.game_state == states.playing) {
	global.day += 1;
	showDayOverlay = true;
	alarm[2] = room_speed * 5;
	alarm[0] = room_speed * 3600;
}