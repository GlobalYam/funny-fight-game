/// @description 

direction = point_direction(x, y, target.x, target.y)


var _barrel_lenght_x = lengthdir_x(barrel_lenght, direction)
var _barrel_lenght_y = lengthdir_y(barrel_lenght, direction)

attack_offset_x = x + _barrel_lenght_x
attack_offset_y = y + _barrel_lenght_y

scr_attack()