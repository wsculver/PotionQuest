/// @description Insert description here
// You can write your code in this editor

var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

if ((x > cam_x && x < (cam_x + cam_w) && y > cam_y && y < (cam_y + cam_h))) {
	// Not sure if I want the below effect to happen, may look at doing animation instead.
	effect_create_above(ef_smoke, x, y, 1, c_dkgray);
	audio_play_sound(snd_pop, 1, false);
	instance_destroy();
}
