// Script 
function scr_hit_calculation(){
	
	// create ds list for all enemies hit just now
	var _hit_by_attack_now = ds_list_create();
	
	
	//put all colliding entities on list
	var _hits = instance_place_list(x, y, prt_entity, _hit_by_attack_now, false);
	
	if (_hits > 0)
	{
		show_debug_message("1")
		//show_debug_message("enemy in atk")
		for (var i = 0; i < _hits; i++)
		{
			show_debug_message("2")
			//if enemy has not been hit, hit it!
			var _hit_id = _hit_by_attack_now[| i]
			if (ds_list_find_index(hit_by_attack, _hit_id) == -1)
			{
				show_debug_message("3")
				ds_list_add(hit_by_attack, _hit_id);
				
				// check if hit id is creator and if it is ok to hit said ceator
				if _hit_id != creator or hurt_creator
				{
					show_debug_message("4")
					with (_hit_id)
					{
						show_debug_message("5")
						if (object_is_ancestor(object_index, prt_entity) and other.hurt_enemies)
						{
							show_debug_message("6")
							// apply invincibility_frames
							if invincibility_frames <= 0
							{
								show_debug_message("7")
								// hurt enemy
								scr_hurt_entity(other.damage, other.creator, other.push_force, other.crit, other.direction);
								
							}
						}
					}
				}
			}
		}
	}
	ds_list_destroy(_hit_by_attack_now);
}