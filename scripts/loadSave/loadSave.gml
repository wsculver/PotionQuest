// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadSave(playerLoad){
	ini_open("savefile.ini");
	
	if (!playerLoad) {
		currRoom = ini_read_real("location", "Room", 0 );
		if (currRoom == biome.main) {
			room_goto(rm_main);
		} else if (currRoom == biome.tundra) {
			room_goto(rm_tundra);
		} else if (currRoom == biome.desert) {
			room_goto(rm_desert);
		} else if (currRoom == biome.ocean) {
			room_goto(rm_ocean);
		} else if (currRoom == biome.forest) {
			room_goto(rm_forest);
		}
		
		// Update game and day timers to last exit
		global.day = ini_read_real("gameTime", "Day", 0);
		obj_controller.alarm[0] = ini_read_real("gameTime", "DayTime", 0);
		obj_controller.alarm[1] = ini_read_real("gameTime", "GameTime", 0);
	}
	
	if (playerLoad && !global.game_load_pos_done) {
		global.game_load_pos_done = true;
		player = instance_find(obj_player, 0);
		player.x = ini_read_real("location", "x", 0 );
		player.y = ini_read_real("location", "y", 0 );
	}
	// TODO: Add Inventory code here
	
	ini_close();
}