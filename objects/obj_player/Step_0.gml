/// @description 


//MOVEMENT
key_up     = keyboard_check(ord("W")) or keyboard_check(vk_up);
key_down   = keyboard_check(ord("S")) or keyboard_check(vk_down);
key_right  = keyboard_check(ord("D")) or keyboard_check(vk_right);
key_left   = keyboard_check(ord("A")) or keyboard_check(vk_left);

// dash
key_dash   = keyboard_check(vk_space) or keyboard_check(vk_shift);

key_slot_m1   = mouse_check_button(mb_left)
key_slot_m2   = mouse_check_button(mb_right)


//input
input_dir  = point_direction(0,0,key_right - key_left, key_down - key_up);

//cursor dir
cursor_dir = point_direction(x,y, global.mouse_object.x, global.mouse_object.y);
direction = cursor_dir

//input magnitude
input_magnitude = (key_right - key_left != 0) || (key_down - key_up != 0); 
if input_magnitude != 0
{
	last_dir_moved = input_dir
}

script_execute(state_script[state]);