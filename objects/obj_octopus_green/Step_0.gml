/// @description Move horizontally until collision with block

if (global.mg_4_game_state == mg_4_states.playing) {
	if (place_meeting(x, y, obj_block)) {
		dir *= -1;
		image_xscale *= -1;
	}
	x += (spd * dir);
}
