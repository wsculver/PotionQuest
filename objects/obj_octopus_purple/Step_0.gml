/// @description Move horizontally until collision with block

if (global.mg_4_game_state == mg_4_states.playing && !sticking) {
	if (place_meeting(x, y, obj_block)) {
		dir *= -1;
		image_yscale *= -1;
		alarm[0] = room_speed * 1.5;
		sticking = true;
		image_index = 0;
		image_speed = 0;
	}
	y -= (spd * dir);
}
