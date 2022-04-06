// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateSave(){
	// POSSIBLE EXPANSION, MULTIPLE SAVEFILES
	
	/** Save file needs:
			Current Room
			XY Coordinates
			Items already in Inventory
	**/
	player = instance_find(obj_player, 0);
	
	currRoom = biome.main;
	if (room == "rm_tundra") {
		currRoom = biome.tundra;
	}
	// TODO: Expand to include other biomes
	
	
	// TODO: Add inventory code
	
	// Not sure if this works or not
	file = file_text_open_write("savefile.txt");
	file_text_write_string(file,currRoom);
	file_text_write_string(file,player.x);
	file_text_write_string(file,player.y);
	file_text_close(file);
}