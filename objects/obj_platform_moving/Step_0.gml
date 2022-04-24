if (global.mg_4_game_state == mg_4_states.playing) {
	x += dir * spd;

	if (place_meeting(x, y-1, obj_player_mg_4)) {
		player = instance_find(obj_player_mg_4, 0);
		player.x += dir * spd;
	}
}
