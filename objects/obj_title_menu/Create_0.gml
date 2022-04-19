/// @description Menu initialization

width = 260;
height = 310;

// Distance text is from side of menu
op_border = 40;
// Distance between options (top to top)
op_space = 64;

pos = 0;

option[0][0] = "Play";
option[0][1] = "How To Play";
option[0][2] = "Quit";

option[1][0] = "Save 1";
option[1][1] = "Save 2";
option[1][2] = "Save 3";
option[1][3] = "Back";

menu_number = 0;

op_length = array_length(option[menu_number]);

depth = -100;
