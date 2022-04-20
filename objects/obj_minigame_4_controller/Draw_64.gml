var cam_w = display_get_gui_width();
var cam_h = display_get_gui_height();

draw_set_color(c_black);
draw_rectangle(0, 0, room_width, 40, false);
draw_set_color(c_white);
draw_set_font(fnt_mesg);
draw_text(20, 10, "Score: " + string(score));
draw_sprite_ext(spr_player_idle_down, -1, cam_w - 100, 20, 0.5, 0.5, 0, c_white, 1);
draw_text(cam_w - 100, 10, " X " + string(lives));

draw_set_font(fnt_gameover);
if (global.mg_4_game_state == mg_4_states.gameover && !instance_exists(obj_star)) {
	draw_text((cam_w / 2), (cam_h / 2), "You win!!");
} else if (global.mg_4_game_state == mg_4_states.gameover) {
	draw_text((cam_w / 2), (cam_h / 2), "Game Over");
}
