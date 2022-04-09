/// @description Check events
global.dayTime = alarm[0];
global.gameTime = alarm[1];
if (global.game_state == states.paused || global.game_state == states.title) {
	alarm[0] = pausedDay;
	alarm[1] = pausedGame;
}
if(keyboard_check_pressed(vk_escape)) {
	// Pause
	if(global.game_state == states.playing) {
		global.game_state = states.paused;
		pausedDay = alarm[0];
		pausedGame = alarm[1];
		if(!sprite_exists(global.screen_shot)){
		    global.screen_shot = sprite_create_from_surface(application_surface, 0, 0, view_wport, view_hport, 0, 0, 0, 0);    
		}
		instance_deactivate_all(true);
		instance_activate_object(obj_paused_menu);
	}
	// Resume
	else if(global.game_state == states.paused) {
		global.game_state = states.playing;
		alarm[0] = pausedDay;
		alarm[1] = pausedGame;
		if(sprite_exists(global.screen_shot)){
			sprite_delete(global.screen_shot);
		}
		instance_activate_all();
	}
	// Hide inventory
	else if(global.game_state == states.inventory) {
		global.game_state = states.playing;
	}
	// Exit riddle
	else if(global.game_state == states.riddle) {
		global.game_state = states.playing;
		obj_riddle.riddle = "";
		obj_riddle.answer = "";
	}
}
	
if(!global.in_minigame) {
	if(keyboard_check_pressed(ord("E"))) {
		// Show inventory
		if(global.game_state == states.playing) {
			global.game_state = states.inventory;	
		}
		// Hide inventory
		else if(global.game_state == states.inventory) {
			global.game_state = states.playing
		}
	}
}

if(keyboard_check_pressed(ord("P"))) {
	updateSave();
	/*global.game_state = states.paused;
	if(!sprite_exists(global.screen_shot)){
	    global.screen_shot = sprite_create_from_surface(application_surface, 0, 0, view_wport, view_hport, 0, 0, 0, 0);    
	}
	instance_deactivate_all(true);
	instance_activate_object(obj_paused_menu);*/
}

if(keyboard_check_pressed(ord("1"))) {
	room_goto(rm_main);
} else if(keyboard_check_pressed(ord("2"))) {
	room_goto(rm_tundra);
} else if(keyboard_check_pressed(ord("3"))) {
	room_goto(rm_forest);
} else if(keyboard_check_pressed(ord("4"))) {
	room_goto(rm_ocean);
} else if(keyboard_check_pressed(ord("5"))) {
	room_goto(rm_desert);
}