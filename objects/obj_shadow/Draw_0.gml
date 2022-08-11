/// @description 

if !scr_exists(creator) instance_destroy()
else
{
	draw_sprite_ext(spr_shadow, creator.image_index+1, creator.x, creator.y, creator.x_flip*creator.x_scale, creator.y_flip*creator.y_scale, creator.image_angle, c_white, 0.5)
}