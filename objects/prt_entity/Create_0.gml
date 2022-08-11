/// @description 

//stats
hp = max_hp

//animation
spr_idle    = spr_player_idle
spr_walk    = spr_player_move
spr_hurt    = spr_player_hurt

scale = 1
x_scale = 1
y_scale = 1

x_flip = 1
y_flip = 1

x_flip_last = 1

alpha = 1

z = 0


invincibility_frames = 1


//attack offsets
attack_offset_x = 0
attack_offset_y = 0

if cast_shadow
{
	shadow = instance_create_layer(x, y, "Shadows", obj_shadow)
	with shadow
	{
		creator = other.id
	}
} else
{
	shadow = noone
}