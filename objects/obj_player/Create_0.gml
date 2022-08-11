/// @description 

//weapon offsets
attack_offset_x = 0
attack_offset_y = 0

shotty_lenght = 7
shotty_height = -1

// define states
enum states
{
	free,
	dash,
	hurt,
	die
}

state_script[states.free] = scr_player_free
state_script[states.dash] = scr_player_dash
state_script[states.hurt] = scr_player_hurt
state_script[states.die]  = scr_player_free
	
state = states.free
last_state = state

//movement
input_magnitude = 0
last_input_magnitude = 0 

current_spd = 0

hspd = 0;
vspd = 0;


//animation
spr_idle    = spr_player_idle
spr_walk    = spr_player_move
spr_hurt    = spr_player_hurt

event_inherited();

sprite_last = sprite_index
