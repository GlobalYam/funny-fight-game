// Script 
function scr_entity_collision(){
	
	// setup collicion state 
	var _collided = false;
	
	var _b_box_x = x
	var _b_box_y = y
	
	// horisontal
	if (hspd > 0) _b_box_x = bbox_right
	if (hspd < 0) _b_box_x = bbox_left

	if tilemap_get_at_pixel(global.tilemap_walls, _b_box_x+hspd, bbox_top) != 0 
		//or  tilemap_get_at_pixel(global.tilemap_walls, _b_box_x+hspd, bbox_bottom) != 0
		or  tilemap_get_at_pixel(global.tilemap_walls, _b_box_x+hspd, bbox_bottom-1) != 0
	{
		var _thang = 0
		
		if (hspd > 0) x = x - (x mod global.cell_size) + global.cell_size - (bbox_right - x) +_thang;
		//if (hspd > 0) x = round(x)
		else if (hspd < 0) x = x - (x mod global.cell_size) - (bbox_left - x) + _thang;
		
		hspd = 0;
		
		_collided = true
	}
	x += hspd
	
	// vertical
	// horisontal
	if (vspd > 0) _b_box_y = bbox_bottom
	if (vspd < 0) _b_box_y = bbox_top
	
	if tilemap_get_at_pixel(global.tilemap_walls, bbox_left, _b_box_y + vspd) != 0 
		//or  tilemap_get_at_pixel(global.tilemap_walls, bbox_right, _b_box_y + vspd) != 0
		or  tilemap_get_at_pixel(global.tilemap_walls, bbox_right-1, _b_box_y + vspd) != 0
	{
		var _thang = 0

		if (vspd >= 0) y = y - (y mod global.cell_size) + global.cell_size - (bbox_bottom - y) + _thang;
		else y = y - (y mod global.cell_size) - (bbox_top - y) + _thang;
		
		vspd = 0;
		
		_collided = true
	}
	
	y += vspd
	
	return _collided
}