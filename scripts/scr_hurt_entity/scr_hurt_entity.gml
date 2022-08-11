// Script 
function scr_hurt_entity( _damage = 1, _other_creator = noone, _push_force = 10, _crit = false, _direction = 0){
	
	hp -= _damage
	
	scr_effect(spr_pop, ,,,,, 0, 0.5)
	
	if hp < 0
	{
		repeat (7)
		{
			scr_effect()
		}
		instance_destroy();
	}
}