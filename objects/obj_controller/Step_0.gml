/// @description Check events

if(keyboard_check_pressed(vk_escape)) {
	// Pause
	if(global.game_state == states.playing) {
		global.game_state = states.paused;
		if(!sprite_exists(global.screen_shot)){
		    global.screen_shot = sprite_create_from_surface(application_surface, 0, 0, view_wport, view_hport, 0, 0, 0, 0);    
		}
		instance_deactivate_all(true);
		instance_activate_object(obj_paused_menu);
	}
	// Resume
	else if(global.game_state == states.paused) {
		global.game_state = states.playing;
		if(sprite_exists(global.screen_shot)){
			sprite_delete(global.screen_shot);
		}
		instance_activate_all();
	}
	// Hide inventory
	else if(global.game_state == states.inventory) {
		global.game_state = states.playing
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