/// @description Insert description here
// You can write your code in this editor
event_inherited();

player = instance_find(obj_player, 0);

if (room == rm_tundra) {
	image_angle = 90;
} else if (room == rm_forest) {
	image_angle = 180;
} else if (room == rm_ocean) {
	image_angle = 0;
} else if (room == rm_desert) {
	image_angle = 270;
}
