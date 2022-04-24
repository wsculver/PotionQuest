/// @description If player collides on top kill enemy, otherwise kill player

if (y + sprite_height/2 < other.y) {
	instance_destroy(other);
	audio_play_sound(snd_squash, 1, false);
	mg_4_force_jump = true;
} else {
	global.mg_4_game_state = mg_4_states.dead;
	audio_play_sound(snd_pop, 1, false);
	instance_destroy();
}
