/// @description Player collides with a ball.
// Destroy player.
if (mg_4_frenzy) {
	instance_destroy(other.id);
	audio_play_sound(snd_squash, 1, false);
} else {
	global.mg_4_game_state = mg_4_states.dead;
	audio_play_sound(snd_pop, 1, false);
	instance_destroy();
}
