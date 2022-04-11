/// @description Insert description here
// You can write your code in this editor

// Add code to angle dart when not flying
if (!launched) {
	if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
		image_angle = min(image_angle + 3, 180);
	}
	if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
		image_angle = max(image_angle - 3, 0);
	}
}

// Add code to launch dart
if (!launched && keyboard_check_pressed(vk_space)) {
	launched = true;
	// Maybe need to increase the speed since this won't compound like A2
	motion_add(image_angle, spd);
	alarm[0] = room_speed * 0.5;
}

// Reference spacegala game for logic on a lot of this


var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

if (!(x > cam_x && x < (cam_x + cam_w) && y > cam_y && y < (cam_y + cam_h))) {
	//If dart isn't in the view window then destroy it
	instance_destroy();
}
