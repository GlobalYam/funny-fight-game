/// @description set tilemap
mp_grid_add_cell(global.grid, x / global.cell_size, y / global.cell_size)

var _data = tilemap_get(global.tilemap_walls, 0, 0);
_data = tile_set_flip(_data, true);

tilemap_set(global.tilemap_walls, _data, x / global.cell_size, y / global.cell_size)