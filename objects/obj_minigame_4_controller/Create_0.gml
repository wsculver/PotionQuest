/// @description Game controller

enum mg_4_states {
	playing,
	dead,
	win,
	lose
};
global.mg_4_game_state = mg_4_states.playing;

global.mg_4_money = score;

#macro purp_oct_img_rate 0.4
