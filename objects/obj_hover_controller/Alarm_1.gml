/// @description Change level

if (state = hover_states.playing) {
	if(level < 3) {
		level++;
		spawn_seconds--;
		audio_play_sound(snd_level_up, 1, false);
	} else {
		state = hover_states.win;
		audio_play_sound(snd_goal, 1, false);
	}
	
	alarm[1] = room_speed * 30;
}
