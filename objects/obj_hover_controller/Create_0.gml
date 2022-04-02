/// @description Initialize hover minigame

enum hover_states {
	playing,
	win,
	lose
}

randomize();

level = 1;
spawn_seconds = 3;
state = hover_states.playing;

// Alarm for spawning bullets
alarm[0] = room_speed * spawn_seconds;

// Alarm for changing levels
alarm[1] = room_speed * 60;
