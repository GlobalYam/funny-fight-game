// Script 
function scr_player_free(){
	
	current_spd = spd
	
	last_input_magnitude = input_magnitude

	hspd = lengthdir_x(input_magnitude* current_spd, input_dir);
	vspd = lengthdir_y(input_magnitude* current_spd, input_dir);
	
	
	
	if key_slot_m1
	{
		scr_attack();
	}
	
	scr_entity_collision()
}