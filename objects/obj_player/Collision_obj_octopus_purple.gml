/// @description If player collides on top kill enemy, otherwise kill player
if (mg_4_frenzy) {
	instance_destroy(other.id);
} else {
	if (y + sprite_height/2 < other.y) {
		instance_destroy(other);
		mg_4_force_jump = true;
	} else {
		global.mg_4_game_state = mg_4_states.dead;
		//audio_play_sound(snd_damage, 1, false);
		instance_destroy();
	}
}
