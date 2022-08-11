/// @description 



var _bar_x1 = (bbox_left-2.5)
var _bar_x2 = (bbox_right+2.5)
var _bar_width =  _bar_x2 - _bar_x1

var _bar_y1 =  bbox_top - 3.5 
var _bar_y2 =  bbox_top - 2
var _bar_height = _bar_y2 - _bar_y1

if _bar_x1 < 0  
{
	_bar_x1 = 2
	_bar_x2 = _bar_x1 + _bar_width
	
}else if _bar_x2 > ROOM_WIDTH
{
	_bar_x2 = ROOM_WIDTH -2
	_bar_x1 = _bar_x2 - _bar_width
}

if _bar_y1 < 0
{
	_bar_y1 = 1
	_bar_y2 = _bar_y1 + _bar_height
}


draw_set_color(c_black)
draw_rectangle(_bar_x1, _bar_y1, _bar_x2, _bar_y2, false)

draw_set_color(c_red)
if hp > 0 
{
	draw_rectangle(_bar_x1, _bar_y1, _bar_x1 + clamp(((hp / max_hp) * _bar_width), 0, _bar_width), _bar_y2, false)
}

if hp > max_hp 
{
	draw_set_color(c_orange)
	draw_rectangle(_bar_x1, _bar_y1, _bar_x1 + clamp(((hp-max_hp / max_hp) * _bar_width), 0, _bar_width), _bar_y2, false)
}

draw_set_color(c_white)


// reset attack offset
attack_offset_x = x
attack_offset_y = y

if !global.game_paused
{
	//(attack)
	atk_cld --
	if invincibility_frames > 0 invincibility_frames--
}

depth = -bbox_bottom
draw_sprite_ext(sprite_index, image_index, x, y+z, scale *(x_flip*x_scale), scale * (y_flip*y_scale), image_angle, c_white, alpha)

