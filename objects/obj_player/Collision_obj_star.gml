//audio_play_sound(snd_goal, 1, false);
if (!instance_exists(obj_coin)) {
	global.mg_4_game_state = mg_4_states.gameover;
	instance_destroy(other.id);

	if (room_exists(room_next(room))) {
		room_goto_next();
	}
}
