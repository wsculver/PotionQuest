/// @description Respawn player or gameover

global.mg_4_lives -= 1;
if (global.mg_4_lives <= 0) {
	global.mg_4_game_state = mg_4_states.lose;
} else {
	room_restart();
	global.mg_4_game_state = mg_4_states.playing;
	score = global.mg_4_money;
}
