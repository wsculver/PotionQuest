/// @description Draw game while paused

if(global.game_state == states.paused){
    draw_sprite_ext(global.screen_shot, -1, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 1, 1, 0, c_white, 1);
}
