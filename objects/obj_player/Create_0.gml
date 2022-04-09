/// @description Player initialization

enum facing {
	up,
	down,
	left,
	right
}

spd = 10;

image_speed = 0.25;

walking = false;
direction_facing = facing.down;

if (global.bridge_travel && room == rm_main) {
	if (global.prevRoom == biome.tundra) {
		// right
		x = global.bridge_tundra_loc_x;
		y = global.bridge_tundra_loc_y;
	} else if (global.prevRoom == biome.forest) {
		// top
		x = global.bridge_forest_loc_x;
		y = global.bridge_forest_loc_y;
	} else if (global.prevRoom == biome.ocean) {
		// bottom
		x = global.bridge_ocean_loc_x;
		y = global.bridge_ocean_loc_y;
	} else if (global.prevRoom == biome.desert) {
		// left
		x = global.bridge_desert_loc_x;
		y = global.bridge_desert_loc_y;
	}
} else {
	loadSave(true);
}
