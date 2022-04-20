/// @description

enum maze_states {
	playing,
	win,
	lose
}

state = maze_states.playing;

time_left = room_speed * 300;
alarm[0] = time_left;
