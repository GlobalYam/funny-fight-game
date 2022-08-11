/// @description 

#region room stuff idk

#macro CELL_SIZE 16
#macro ROOM_WIDTH 320
#macro ROOM_HEIGHT 180

#macro ROOM_WIDTH_HALF ROOM_WIDTH/2
#macro ROOM_HEIGHT_HALF ROOM_HEIGHT/2

global.cell_size = CELL_SIZE

global.tilemap_walls = layer_tilemap_get_id("Tiles_Walls")

global.h_cells      = room_width / global.cell_size
global.v_cells      = room_height /global.cell_size

global.grid = mp_grid_create(0, 0, global.h_cells, 
		global.v_cells, global.cell_size, global.cell_size);
		
#endregion		

#region //managers

global.mouse_object = instance_create_layer(x,y,"Instances", obj_cursor)

global.camera = instance_create_layer(x,y,"Instances", obj_camera)

global.player = instance_create_layer(ROOM_WIDTH_HALF, ROOM_HEIGHT_HALF, "Instances", obj_player)

#endregion


#region // game_state

// if game is paused
global.game_paused = false

// stop everything (maeby for hit-pause???)
global.stop = false

#endregion

#region physics

global.grav = 0.3

#endregion