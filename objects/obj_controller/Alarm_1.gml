/// @description End of game timer
if (global.game_state == states.playing) {
	global.game_state = states.gameover;
}