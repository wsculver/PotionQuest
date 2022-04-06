/// @description Initialize controller

enum states {
	title,
	playing,
	paused,
	inventory,
	gameover
}

enum biome {
	main,
	tundra,
	forest,
	ocean,
	desert
}

global.game_state = states.title;

global.screen_shot = -1;

global.show_npc_textbox = false;
global.can_show_npc_textbox = true;

global.in_minigame = false;

global.day = 1;
showDayOverlay = false;
// Set day timer - 1 hour
alarm[0] = room_speed * 3600;
// Set game over timer - 7 hours
alarm[1] = room_speed * 3600 * 7;
pausedDay = alarm[0];
pausedGame = alarm[1];