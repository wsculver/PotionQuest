/// @description Earn a point and destroy cherry

mg_4_frenzy = true;
alarm[0] = room_speed * 5;
//audio_play_sound(snd_cherry, 1, false);
instance_destroy(other.id);
//audio_play_sound(snd_frenzy, 1, true);
image_alpha = 0.75;
