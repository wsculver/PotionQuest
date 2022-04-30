/// @description Initialize text box

width = 512;
height = 118;

// Distance text is from side of box
text_border = 10;
// Distance between lines (top to top)
text_space = 32;

text = noone;

num_pages = 0;

current_page = 0;

can_switch_page = false;

show_arrows = false;
blink_speed = room_speed * 0.75;
alarm[1] = blink_speed;

depth = -99;