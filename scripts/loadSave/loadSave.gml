// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadSave(){
	file = file_text_open_read(working_directory+"savefile.txt");
	
	currRoom = file_text_read_string(file);
	if (currRoom == biome.main) {
		room_goto(rm_main);
	}
	
	// FIXME!!!
	// currX and currY seem to have newline characters at the ends and as such can't be converted to ints
	currX = file_text_read_string(file);
	currY = file_text_read_string(file);
	player = instance_find(obj_player, 0);
	player.x = real(currX);
	player.y = real(currY);
}