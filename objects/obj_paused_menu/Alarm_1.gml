/// @description Load how to play menu after save is definitely done
global.game_state = states.title;
global.how_to_play_return_room = room;
global.game_load_pos_done = false;
room_goto(rm_how_to_play);
