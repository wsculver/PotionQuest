/// @description Spawn a bullet in a random direction

if (state = hover_states.playing) {
	// Create direction vector and normalize to speed
	var x_dir = random_range(-1, 1);
	var y_dir = random_range(-1, 1);
	var mag = sqrt(sqr(x_dir) + sqr(y_dir));
	x_dir /= (mag / (level * 3));
	y_dir /= (mag / (level * 3));
	
	var bullet = instance_create_layer(x, y, "Instances", obj_hover_bullet);
	bullet.x_dir = x_dir;
	bullet.y_dir = y_dir;

	audio_play_sound(snd_laser_shoot, 1, false);

	alarm[0] = room_speed * spawn_seconds;
}
