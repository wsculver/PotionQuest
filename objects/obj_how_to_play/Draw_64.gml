/// @description Draw how to play text

draw_set_font(fnt_how_to_play);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_red);

// Back
draw_text(90, 50, "ESC");

draw_set_font(fnt_how_to_play_title);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);

// Title
draw_text(room_width / 2, 60, "How To Play");

draw_set_font(fnt_how_to_play);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

var x_start = 60;
var w = 375;

// Walk
draw_text_ext(room_width / 2 + x_start, 140, "Walk using WASD or arrow keys.", 24, w);	

// Inventory
draw_text_ext(room_width / 2 + x_start, 240, "Access your inventory by pressing E.\nPause by pressing Escape.\nNavigate menus with arrow keys.", 24, w);	

// Riddle
draw_text_ext(room_width / 2 + x_start, 380, "Type to put in your riddle answer.\nPress Enter to submit.\nFollow the minigame instructions before starting the minigame.", 24, w);

// Interaction
draw_text_ext(room_width / 2 + x_start, 600, "Interact with NPCs and objects by pressing Spacebar or Enter when in range. You will be prompted with the correct key to press.", 24, w);

// Riddle sprite stuff
draw_set_font(fnt_riddle);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_set_color(c_white);
draw_text(115, 460, "Answer:");

draw_set_color(c_black);
draw_text(245, 460, "riddle");
