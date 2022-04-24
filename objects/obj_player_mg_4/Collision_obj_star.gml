//audio_play_sound(snd_goal, 1, false);
if (!instance_exists(obj_coin) || cheat_code) {
	global.mg_4_game_state = mg_4_states.win;
	audio_play_sound(snd_goal, 1, false);
	instance_destroy(other.id);
}
