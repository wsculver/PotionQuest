/// @description Change wall color or destroy

// Destroy the bullet
instance_destroy(other);
audio_play_sound(snd_pop, 1, false);

remaining_hits--;

switch(remaining_hits) {
	case 2:
		image_index = 1;
		break;
	case 1:
		image_index = 2;
		break;
	case 0:
		instance_destroy();
		break;
	default:
		image_index = 0;
		break;
}
