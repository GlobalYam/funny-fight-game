// Script 
function scr_attack(){
	
	if atk_cld < 0
	{
		scr_effect(spr_gun_pop, attack_offset_x, attack_offset_y, 2,,,,0)
		
		var _creator = id
		
		var _layer = "Hazards"
		
		if _creator = global.player _layer = "Player_attacks"
		
		var _attack = instance_create_layer(attack_offset_x, attack_offset_y, _layer, obj_attack)
		
		var _atk_spd = atk_spd
		var	_atk_dmg = atk_dmg
		
		var _atk_range = atk_range
		
		atk_cld = atk_cld_max
		
		if scr_exists(_attack) with _attack
		{
			speed  = _atk_spd
			damage = _atk_dmg
			range  = _atk_range
			
			creator = other.id
			
			direction = other.direction
		}
	}
}