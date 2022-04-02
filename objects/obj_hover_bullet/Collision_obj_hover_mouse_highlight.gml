/// @description Player hovered over bullet

// Make sure the bullet is outside of the spawner area
if (!place_meeting(x, y, obj_hover_controller)) {
	instance_destroy();
}
