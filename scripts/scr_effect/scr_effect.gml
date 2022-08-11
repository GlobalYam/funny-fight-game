// Script 
function scr_effect( _sprite = spr_pop, _x = x, _y = y, _image_speed = random_range(0.5, 2), _direction = random_range(0, 360), _direction_plus = random_range(-45,45), _image_angle = _direction+_direction_plus, _speed = random_range(0.5, 2), _scale = random_range(0.75, 1)){
	
	
	instance_create_layer(_x, _y, "Instances", obj_effect, 
	{
		x : _x,
		y : _y,
		
		sprite_index : _sprite,
		image_speed : _image_speed,
		
		image_angle : _image_angle,
		
		direction : _direction + _direction_plus,
		speed : _speed,
		
		image_xscale : _scale,
		image_yscale : _scale,
		
	});
	
}