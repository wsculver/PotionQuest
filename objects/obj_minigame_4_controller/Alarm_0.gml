/// @description Respawn player or gameover

lives -= 1;
if (lives <= 0) {
	global.mg_4_game_state = mg_4_states.gameover;
} else {
	room_restart();
	global.mg_4_game_state = mg_4_states.playing;
	score = global.mg_4_money;
}
