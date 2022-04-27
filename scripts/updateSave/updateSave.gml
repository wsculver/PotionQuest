// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateSave(saveNum, quit){
	/** Save file needs:
			Current Room
			XY Coordinates
			Items already in Inventory
	**/
	currRoom = biome.main;
	locX = 0;
	locY = 0;
	inMiniGame = false;
	if (room == rm_minigame_1_balloon) {
		// Minigame in tundra
		currRoom = biome.tundra;
		locX = global.vault_tundra_loc_x;
		locY = global.vault_tundra_loc_y;
		inMiniGame = true && !quit;
	} else if (room == rm_minigame_2_maze) {
		// Minigame in forest
		currRoom = biome.forest;
		locX = global.vault_forest_loc_x;
		locY = global.vault_forest_loc_y;
		inMiniGame = true && !quit;
	} else if (room == rm_minigame_3_hover) {
		// Minigame in desert
		currRoom = biome.desert;
		locX = global.vault_desert_loc_x;
		locY = global.vault_desert_loc_y;
		inMiniGame = true && !quit;
	} else if (room == rm_minigame_4_platform) {
		// Minigame in ocean
		currRoom = biome.ocean;
		locX = global.vault_ocean_loc_x;
		locY = global.vault_ocean_loc_y;
		inMiniGame = true && !quit;
	} else {
		instance_activate_all();
		player = instance_find(obj_player, 0);
		
		if (room == rm_tundra) {
			currRoom = biome.tundra;
		} else if (room == rm_forest) {
			currRoom = biome.forest;
		} else if (room == rm_ocean) {
			currRoom = biome.ocean;
		} else if (room == rm_desert) {
			currRoom = biome.desert;
		} else if (room == rm_house) {
			currRoom = biome.house;
		}
	
		locX = player.x;
		locY = player.y;
	}
	if (saveNum == 2) {
		ini_open("savefile2.ini");
	} else if (saveNum == 3) {
		ini_open("savefile3.ini");
	} else {
		ini_open("savefile1.ini");
	}
	ini_write_real("location", "Room", currRoom );
	ini_write_real("location", "x", locX );
	ini_write_real("location", "y", locY );
	ini_write_real("location", "inMiniGame", inMiniGame);
	ini_write_real("gameTime", "Day", global.day);
	ini_write_real("gameTime", "DayTime", global.dayTime);
	ini_write_real("gameTime", "GameTime", global.gameTime);
	ini_write_real("ingredients", "hasIngredient_1", global.hasIngredient_1);
	ini_write_real("ingredients", "hasIngredient_2", global.hasIngredient_2);
	ini_write_real("ingredients", "hasIngredient_3", global.hasIngredient_3);
	ini_write_real("ingredients", "hasIngredient_4", global.hasIngredient_4);
	ini_write_real("interactions", "witch_inter_done", global.witch_inter_done);
	ini_close();
}