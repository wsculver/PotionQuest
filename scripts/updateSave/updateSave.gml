// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateSave(){
	// POSSIBLE EXPANSION, MULTIPLE SAVEFILES - unlikely
	
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
	
	
	// TODO: Add inventory code
	
	
	ini_open("savefile.ini");
	ini_write_real("location", "Room", currRoom );
	ini_write_real("location", "x", player.x );
	ini_write_real("location", "y", player.y );
	ini_write_real("gameTime", "Day", global.day);
	ini_write_real("gameTime", "DayTime", global.dayTime);
	ini_write_real("gameTime", "GameTime", global.gameTime);
	ini_close();
}