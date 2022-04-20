/// @description Destroy and respawn

if (!place_meeting(start_x, start_y, obj_player)) {
	instance_create_layer(start_x, start_y, "Instances", obj_platform_falling);
	instance_destroy();
} else {
	visible = false;
	alarm[1] = room_speed * 0.2;
}
