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

global.game_load_pos_done = false;

global.bridge_tundra_loc_x = 7424;
global.bridge_tundra_loc_y = 4160;

global.bridge_forest_loc_x = 4192;
global.bridge_forest_loc_y = 448;

global.bridge_ocean_loc_x = 4192;
global.bridge_ocean_loc_y = 7584;

global.bridge_desert_loc_x = 512;
global.bridge_desert_loc_y = 4160;

global.prevRoom = rm_main;
global.bridge_travel = false;

global.day = 1;
showDayOverlay = false;
// Set day timer - 1 hour
alarm[0] = room_speed * 3600;
// Set game over timer - 7 hours
alarm[1] = room_speed * 3600 * 7;
pausedDay = alarm[0];
pausedGame = alarm[1];
global.dayTime = alarm[0];
global.gameTime = alarm[1];
