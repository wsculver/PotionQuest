/// @description 

// Player movement
// Left arrow or A key
if((keyboard_check(vk_left) || keyboard_check(ord("A"))) && !place_meeting(x - spd, y, obj_obstacle)) {
	x -= spd;
}
// Right arrow or D key
if((keyboard_check(vk_right) || keyboard_check(ord("D"))) && !place_meeting(x + spd, y, obj_obstacle)) {
	x += spd;
}
// Up arrow or W key
if((keyboard_check(vk_up) || keyboard_check(ord("W"))) && !place_meeting(x, y - spd, obj_obstacle)) {
	y -= spd;	
}
// Down arrow or S key
if((keyboard_check(vk_down) || keyboard_check(ord("S"))) && !place_meeting(x, y + spd, obj_obstacle)) {
	y += spd;
}

// Center the camera
half_cam_width = camera_get_view_width(view_camera[0]) / 2;
half_cam_height = camera_get_view_height(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0], x - half_cam_width, y - half_cam_height);