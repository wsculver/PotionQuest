/// @description Player reached the end of the maze

audio_play_sound(snd_goal, 1, false);
obj_maze_controller.state = maze_states.win;
