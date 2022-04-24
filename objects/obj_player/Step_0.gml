/// @description 

if(global.game_state == states.playing) {
	// Player movement
	// Left arrow or A key
	if (room == rm_house) {
		spd = 5;
	} else {
		spd = 10;
	}
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
	if (room != rm_house) {
		half_cam_width = camera_get_view_width(view_camera[0]) / 2;
		half_cam_height = camera_get_view_height(view_camera[0]) / 2;
		
		camera_set_view_pos(view_camera[0], x - half_cam_width, y - half_cam_height);
	}
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
