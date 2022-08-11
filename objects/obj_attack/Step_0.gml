/// @description 
//depth = -bbox_bottom
if scr_exists(creator)
{
	x_scale = scale + (speed/3)
	image_angle = direction

	distance_travelled += speed if distance_travelled > range
	{
		instance_destroy();
	}

	//calculate hits
	scr_hit_calculation();

	if place_meeting(x, y, obj_wall) instance_destroy();
}