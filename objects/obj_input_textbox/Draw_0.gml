/// @description Draw text

draw_self();

draw_set_font(fnt_riddle);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_set_color(c_white);
draw_text(x - sprite_width / 2 - 125, y, "Answer:");

draw_set_color(c_black);
draw_text(x - sprite_width / 2 + 2, y, text);
