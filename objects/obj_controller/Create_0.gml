/// @description Initialize controller

enum states {
	title,
	playing,
	paused,
	inventory,
	gameover
}

global.game_state = states.title;

global.screen_shot = -1;

global.show_npc_textbox = false;
global.can_show_npc_textbox = true;