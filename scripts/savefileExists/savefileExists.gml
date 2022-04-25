// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function savefileExists(saveNum){
	if (saveNum == 2) {
		ini_open("savefile2.ini");
	} else if (saveNum == 3) {
		ini_open("savefile3.ini");
	} else {
		ini_open("savefile1.ini");
	}
	
	result = (ini_read_string("location", "Room", "") != "");
	ini_close();
	
	return result;
}