/// @description End of game timer
if (global.game_state == states.playing) {
	global.game_state = states.gameover;
	audio_play_sound(snd_fail, 1, false);
}