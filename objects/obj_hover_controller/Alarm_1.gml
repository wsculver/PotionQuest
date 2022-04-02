/// @description Change level

if (state = hover_states.playing) {
	if(level < 3) {
		level++;
		spawn_seconds--;
	} else {
		state = hover_states.win;
	}
	
	alarm[1] = room_speed * 60;
}
