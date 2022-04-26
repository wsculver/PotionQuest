/// @description Draw text

draw_self();

draw_set_font(fnt_riddle);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_set_color(c_white);
draw_text(x - sprite_width / 2 - 125, y, "Answer:");

draw_set_color(c_black);
draw_text(x - sprite_width / 2 + 2, y, text);

var text_width = string_width(text);
if (show_cursor) {
	draw_sprite_ext(spr_cursor, -1, x - sprite_width / 2 + 2 + text_width + 3, y, 1.4, 1.7, 0, c_white, 1);
}
