/// @description Draw space bar image above vault

if(player_in_zone && global.game_state == states.playing) {
	draw_sprite_ext(spr_spacebar, -1, x - camera_get_view_x(view_camera[0]), y - camera_get_view_y(view_camera[0]) - 64, 1, 1, 0, c_white, 1);
}
