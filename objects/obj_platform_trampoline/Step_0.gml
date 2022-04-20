/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y-1, obj_player)) {
	obj_player.force_jump = true;
	if (keyboard_check(vk_space)) {
		obj_player.jspd_bounce = jump_force;
	}
}
