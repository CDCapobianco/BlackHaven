// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function Player_Attack_State(){

	if(sprite_index != sprite_paladin_attack1){
		sprite_index = sprite_paladin_attack1
		image_index = 0;
		ds_list_clear(hitByAttack)
	}
	
	mask_index = sprite_paladin_attack1_hb
	var hitByAttackNow = ds_list_create()
	var hits = instance_place_list(x,y,obj_enemy,hitByAttackNow,false)
	if (hits > 0){
		for (var i=0;i<hits;i++){
			var hitID = hitByAttackNow[| i]
			if (ds_list_find_index(hitByAttack,hitID) == -1){
				ds_list_add(hitByAttack,hitID)
				with (hitID){
					//Enemy_Hit(2)
				}
			}
		}
	}
	
ds_list_destroy(hitByAttackNow)
mask_index = sprite_paladin_idle

if(animation_end()){
	
	sprite_index = sprite_paladin_idle
	state = PLAYERSTATE.IDLE
}

}

