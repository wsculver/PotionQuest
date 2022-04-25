// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clearScript(saveNum){
//	file_delete("savefile3.ini")
	if (saveNum == 2) {
		file_delete("savefile2.ini");
	} else if (saveNum == 3) {
		file_delete("savefile3.ini");
	} else {
		file_delete("savefile1.ini");
	}
}