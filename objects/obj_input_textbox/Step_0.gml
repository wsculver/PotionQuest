/// @description Handle key presses

// Typing characters
if(keyboard_check(vk_anykey) && !keyboard_check(vk_space) && string_length(text) < 20) {
	text += string(keyboard_string);
	keyboard_string = "";
}

if(keyboard_check(vk_space)) {
	keyboard_string = "";
}

// Backspace held down
if(keyboard_check(vk_backspace) && !keyboard_check_pressed(vk_backspace) && delete_timer == 2) {
	text = string_delete(text, string_length(text), 1);
	delete_timer = 0;
	keyboard_string = "";
}

// Backspace pressed once
if(keyboard_check_pressed(vk_backspace)) {
	text = string_delete(text, string_length(text), 1);
	keyboard_string = "";
	delete_timer = -4;
}

// Timer update
if(delete_timer != 2) {
	delete_timer++;
}
