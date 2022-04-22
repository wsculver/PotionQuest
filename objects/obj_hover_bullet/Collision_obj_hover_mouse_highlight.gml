/// @description Player hovered over bullet

// Make sure the bullet is outside of the spawner area
if (!place_meeting(x, y, obj_hover_controller)) {
	audio_play_sound(snd_damage, 1, false);
	instance_destroy();
}
