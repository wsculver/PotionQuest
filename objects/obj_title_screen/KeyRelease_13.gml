/// @description Start game
global.game_state = states.playing;
room_goto_next();
if (global.load_save) {
	loadSave(false);
}
