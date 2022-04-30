if (global.game_state = states.playing) {
	/// @description Movement and collision

	var keyleft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	var keyright = keyboard_check(vk_right) || keyboard_check(ord("D"));
	var keyup = keyboard_check(vk_up) || keyboard_check(ord("W"));
	var keydown = keyboard_check(vk_down) || keyboard_check(ord("S"));
	//If only left = -1, if only right = 1, if both = 0
	var move = keyright - keyleft;
	var jumping = keyboard_check(vk_space);
	var vmove = keydown - keyup;

	mg_4_hsp = mg_4_spd * move;
	mg_4_vsp += mg_4_grv;

	//Moving
	if (move != 0) {
		//Flip image to the direction of movement
		if (mg_4_grounded && move < 0) {
			sprite_index = spr_player_walk_left;
		} else if (mg_4_grounded && move > 0) {
			sprite_index = spr_player_walk_right;
		}
	} else if (mg_4_climbing_idle) {
		sprite_index = spr_player_idle_up;
	} else if (!mg_4_climbing) {
		sprite_index = spr_player_idle_down;
	}

	//Jumping
	if (mg_4_grounded && jumping) {
		mg_4_vsp = -(mg_4_jspd + mg_4_jspd_bounce);
		mg_4_jspd_bounce = 0;
		mg_4_grounded = false;
		sprite_index = spr_player_idle_down;
		mg_4_has_dbl_jmp = false;
		audio_play_sound(snd_jump, 1, false);
	}
	
	if (!mg_4_grounded && jumping && mg_4_can_dbl_jmp && !mg_4_has_dbl_jmp) {
		mg_4_has_dbl_jmp = true;
		mg_4_vsp -= (mg_4_jspd + mg_4_jspd_bounce);
		mg_4_jspd_bounce = 0;
		mg_4_grounded = false;
		sprite_index = spr_player_idle_down;
		audio_play_sound(snd_jump, 1, false);
	}

	//Climbing
	if (place_meeting(x, y + 1, obj_ladder)) {
		if (vmove < 0 || (vmove == 0 && mg_4_climbing) || (vmove > 0 && place_meeting(x, y+sprite_height, obj_ladder))) {
			mg_4_climbing = true;
		} else {
			mg_4_climbing = false;
		}
		
		if (vmove == 0) {
			mg_4_climbing_idle = true;
		} else {
			mg_4_climbing_idle = false;
		}
	} else {
		mg_4_climbing = false;
		mg_4_climbing_idle = false;
	}

	if (mg_4_climbing) {
		mg_4_vsp = vmove * mg_4_spd;
		if (!mg_4_climbing_idle) {
			sprite_index = spr_player_walk_up;
		}
	}

	// Horizontal collision with blocks

	if (place_meeting(x + mg_4_hsp, y, obj_block)) {
		while (!place_meeting(x + sign(mg_4_hsp), y, obj_block)) {
			x += sign(mg_4_hsp);
		}
		mg_4_hsp = 0;
	}
	x += mg_4_hsp;


	// Vertical collision
	//Free falling?
	if (place_meeting(x, y + mg_4_vsp, obj_block)) {
		if (!mg_4_climbing) {
			while (!place_meeting(x, y + sign(mg_4_vsp), obj_block)) {
				y += sign(mg_4_vsp);
			}
			mg_4_vsp = 0;
			mg_4_grounded = true;
		}
	} else {
		mg_4_grounded = false;
	}

	y += mg_4_vsp;

	if (y > room_height) {
		global.mg_4_game_state = mg_4_states.dead;
		audio_play_sound(snd_pop, 1, false);
		instance_destroy();
	}
	
	/* Minigame cheat code, useful for debugging
	if (keyboard_check(ord("C"))) {
		cheat_code = true;
		instance_find(obj_star, 0).visible = true;
	}*/
}
