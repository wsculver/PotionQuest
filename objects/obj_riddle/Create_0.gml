/// @description 

enum status {
	locked,
	incorrect,
	unlocked,
	minigame_rules
}

riddle_state = status.locked;

width = 768;
height = 576;

// Distance text is from side of box
text_border = 10;
// Distance between lines (top to top)
text_space = 32;

riddle = "";
answers = [];

minigame_room = noone;
minigame_rules = "";

textbox_object = noone;

depth = -99;
