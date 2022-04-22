/// @description Move the bullet

if (obj_hover_controller.state = hover_states.playing) {
	x += x_dir;
	y += y_dir;

	// Check if bullet off screen
	if (x > room_width + (sprite_width / 2) || x < 0 - (sprite_width / 2) || y > room_height + (sprite_height / 2) || y < 0 - (sprite_width / 2)) {
		audio_play_sound(snd_fail, 1, false);
		obj_hover_controller.state = hover_states.lose;
	}
} else {
	instance_destroy();
}
