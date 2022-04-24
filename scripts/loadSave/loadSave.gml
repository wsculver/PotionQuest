// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadSave(playerLoad, saveNum){
	if (saveNum == 2) {
		ini_open("savefile2.ini");
	} else if (saveNum == 3) {
		ini_open("savefile3.ini");
	} else {
		ini_open("savefile1.ini");
	}
	
	if(!(ini_read_string("location", "Room", "") == "")) {
		// The ini file exists
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
			
			global.hasIngredient_1 = ini_read_real("ingredients", "hasIngredient_1", 0);
			if (global.hasIngredient_1 == undefined) {
				global.hasIngredient_1 = 0;
			}
			global.hasIngredient_2 = ini_read_real("ingredients", "hasIngredient_2", 0);
			if (global.hasIngredient_2 == undefined) {
				global.hasIngredient_2 = 0;
			}
			global.hasIngredient_3 = ini_read_real("ingredients", "hasIngredient_3", 0);
			if (global.hasIngredient_3 == undefined) {
				global.hasIngredient_3 = 0;
			}
			global.hasIngredient_4 = ini_read_real("ingredients", "hasIngredient_4", 0);
			if (global.hasIngredient_4 == undefined) {
				global.hasIngredient_4 = 0;
			}
			global.witch_inter_done = ini_read_real("interactions", "witch_inter_done", 0);
		}
	
		if (playerLoad && !global.game_load_pos_done) {
			global.game_load_pos_done = true;
			player = instance_find(obj_player, 0);
			player.x = ini_read_real("location", "x", 0 );
			player.y = ini_read_real("location", "y", 0 );
		}
	}
	ini_close();
}