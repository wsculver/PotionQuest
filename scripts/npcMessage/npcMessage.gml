// Display a specific npc message at the bottom of the screen
function npcMessage(text_array){
	if(text_array != noone) {
		obj_npc_textbox.text = text_array;
		global.show_npc_textbox = true;
		global.can_show_npc_textbox = false;
		alarm[0] = room_speed * 0.1;
	}
}