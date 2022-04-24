/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y-1, obj_player_mg_4)) {
	obj_player_mg_4.force_jump = true;
	if (keyboard_check(vk_space)) {
		obj_player_mg_4.jspd_bounce = jump_force;
	}
}
