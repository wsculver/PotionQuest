/// @description Earn a point and destroy cherry

mg_4_can_dbl_jmp = true;
alarm[0] = room_speed * 5;
alarm[1] = room_speed * 8;
mg_4_cherry_x = other.x;
mg_4_cherry_y = other.y;
audio_play_sound(snd_cherry, 1, false);
instance_destroy(other.id);
audio_play_sound(snd_frenzy, 1, true);
image_alpha = 0.75;
