/// @description 

if(global.game_state == states.playing) {
	// Player movement
	// Left arrow or A key
	if((keyboard_check(vk_left) || keyboard_check(ord("A"))) && !place_meeting(x - spd, y, obj_obstacle)) {
		x -= spd;
		direction_facing = facing.left;
		sprite_index = spr_player_walk_left;
		walking = true;
	}
	// Right arrow or D key
	if((keyboard_check(vk_right) || keyboard_check(ord("D"))) && !place_meeting(x + spd, y, obj_obstacle)) {
		x += spd;
		direction_facing = facing.right;
		sprite_index = spr_player_walk_right;
		walking = true;
	}
	// Up arrow or W key
	if((keyboard_check(vk_up) || keyboard_check(ord("W"))) && !place_meeting(x, y - spd, obj_obstacle)) {
		y -= spd;	
		direction_facing = facing.up;
		sprite_index = spr_player_walk_up;
		walking = true;
	}
	// Down arrow or S key
	if((keyboard_check(vk_down) || keyboard_check(ord("S"))) && !place_meeting(x, y + spd, obj_obstacle)) {
		y += spd;
		direction_facing = facing.down;
		sprite_index = spr_player_walk_down;
		walking = true;
	}
	
	if(!keyboard_check(vk_left) && !keyboard_check(ord("A")) && !keyboard_check(vk_right) && !keyboard_check(ord("D")) && !keyboard_check(vk_up) && !keyboard_check(ord("W")) && !keyboard_check(vk_down) && !keyboard_check(ord("S"))) {
		walking = false;
	}

	// Center the camera
	half_cam_width = camera_get_view_width(view_camera[0]) / 2;
	half_cam_height = camera_get_view_height(view_camera[0]) / 2;

	camera_set_view_pos(view_camera[0], x - half_cam_width, y - half_cam_height);
} else {
	walking = false;
}

if(!walking) {
	switch(direction_facing) {
		case facing.up:
			sprite_index = spr_player_idle_up;
			break;
		case facing.down:
			sprite_index = spr_player_idle_down;
			break;
		case facing.left:
			sprite_index = spr_player_idle_left;
			break;
		case facing.right:
			sprite_index = spr_player_idle_right;
			break;
	}
}

if (global.game_state = states.playing_mg_4) {
	/// @description Movement and collision

	var keyleft = keyboard_check(vk_left);
	var keyright = keyboard_check(vk_right);
	var keyup = keyboard_check(vk_up);
	var keydown = keyboard_check(vk_down);
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
	} else if (!mg_4_climbing) {
		sprite_index = spr_player_idle_down;
	}

	//Jumping
	if (mg_4_grounded && jumping || mg_4_force_jump) {
		mg_4_force_jump = false;
		mg_4_vsp = -(mg_4_jspd + mg_4_jspd_bounce);
		mg_4_jspd_bounce = 0;
		mg_4_grounded = false;
		sprite_index = spr_player_idle_down;
		//audio_play_sound(snd_jump, 1, false);
	}

	//Climbing
	if (place_meeting(x, y + 1, obj_ladder)) {
		if (vmove < 0 || (vmove == 0 && mg_4_climbing) || (vmove > 0 && place_meeting(x, y+sprite_height, obj_ladder))) {
			mg_4_climbing = true;
		} else {
			mg_4_climbing = false;
		}
	} else {
		mg_4_climbing = false;
	}

	if (mg_4_climbing) {
		mg_4_vsp = vmove * mg_4_spd;
		sprite_index = spr_player_walk_up;
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
		//audio_play_sound(snd_damage, 1, false);
		instance_destroy();
	}
}
