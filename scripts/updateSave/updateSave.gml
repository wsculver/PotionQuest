// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateSave(saveNum){
	/** Save file needs:
			Current Room
			XY Coordinates
			Items already in Inventory
	**/
	instance_activate_all();
	player = instance_find(obj_player, 0);
	
	currRoom = biome.main;
	if (room == rm_tundra) {
		currRoom = biome.tundra;
	} else if (room == rm_forest) {
		currRoom = biome.forest;
	} else if (room == rm_ocean) {
		currRoom = biome.ocean;
	} else if (room == rm_desert) {
		currRoom = biome.desert;
	}
	
	if (saveNum == 2) {
		ini_open("savefile2.ini");
	} else if (saveNum == 3) {
		ini_open("savefile3.ini");
	} else {
		ini_open("savefile1.ini");
	}
	ini_write_real("location", "Room", currRoom );
	ini_write_real("location", "x", player.x );
	ini_write_real("location", "y", player.y );
	ini_write_real("gameTime", "Day", global.day);
	ini_write_real("gameTime", "DayTime", global.dayTime);
	ini_write_real("gameTime", "GameTime", global.gameTime);
	ini_write_real("ingredients", "hasIngredient_1", global.hasIngredient_1);
	ini_write_real("ingredients", "hasIngredient_2", global.hasIngredient_2);
	ini_write_real("ingredients", "hasIngredient_3", global.hasIngredient_3);
	ini_write_real("ingredients", "hasIngredient_4", global.hasIngredient_4);
	ini_close();
}