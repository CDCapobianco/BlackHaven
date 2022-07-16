// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function Player_Attack2_State(){
var _input = rollback_get_input()
Process_Attack(sprite_paladin_attack2,sprite_paladin_attack2_hb)

if (_input.attack) && (image_index > 4){
	state = PLAYERSTATE.ATTACK3
}
if(animation_end()){
	
	sprite_index = sprite_paladin_idle
	state = PLAYERSTATE.LOCOMOTION
}
}