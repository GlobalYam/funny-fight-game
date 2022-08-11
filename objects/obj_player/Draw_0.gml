/// @description 


#region
if hspd != 0 or vspd != 0
{
	sprite_index = spr_walk
	
	if hspd != 0
	{
		//x_flip = sign(hspd)
	}
	
} else
{
	sprite_index = spr_idle
	
	if sign(mouse_x - x) != 0
	{
		//x_flip = sign(mouse_x - x)
	}
	
}
#endregion
if sign(mouse_x - x) != 0
{
	x_flip = sign(mouse_x - x)
}


if sprite_last != sprite_index or x_flip_last != x_flip
{
	image_index = 0
}

// draw self and all that
event_inherited()

var _gun_scale = 1

//offsets
var _off_to_side_x = lengthdir_x(3, direction -90) * x_flip
var _off_to_side_y = lengthdir_y(3, direction -90) * x_flip

attack_offset_x = (x + _off_to_side_x )//+ x_flip * -2)
attack_offset_y = (y + _off_to_side_y )//+ z + 5)


draw_sprite_ext(spr_gun, 1, attack_offset_x, attack_offset_y, 
				_gun_scale * (y_flip * x_scale), _gun_scale * (x_flip * y_scale), 
				direction, c_white, alpha)

var _barrel_lenght_x = lengthdir_x(shotty_lenght, direction)
var _barrel_lenght_y = lengthdir_y(shotty_lenght, direction)

var _barrel_height_x = lengthdir_x(shotty_height, direction-90) *x_flip
var _barrel_height_y = lengthdir_y(shotty_height, direction-90) *x_flip

var _barrel_x = _barrel_lenght_x + _barrel_height_x
var _barrel_y = _barrel_lenght_y + _barrel_height_y

#region
/*
var circle_offset = 0.5 * (x_flip+1)

draw_set_color(c_red)
draw_sprite(spr_pixel, 0, attack_offset_x - circle_offset, attack_offset_y)

draw_set_color(c_blue)
draw_sprite(spr_pixel, 0, attack_offset_x+_barrel_lenght_x - circle_offset, attack_offset_y+_barrel_lenght_y)

draw_set_color(c_yellow)
draw_sprite(spr_pixel, 0, attack_offset_x+_barrel_height_x - circle_offset, attack_offset_y+_barrel_height_y)


draw_set_color(c_green)
draw_sprite(spr_pixel, 0, attack_offset_x + _barrel_x - circle_offset, attack_offset_y + _barrel_y)

draw_set_color(c_white)
*/
#endregion

attack_offset_x = attack_offset_x + _barrel_x
attack_offset_y = attack_offset_y + _barrel_y


x_flip_last = x_flip
sprite_last = sprite_index









