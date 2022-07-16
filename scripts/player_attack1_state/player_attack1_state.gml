// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function Player_Attack1_State(){

Process_Attack(sprite_paladin_attack1,sprite_paladin_attack1_hb)
var _input = rollback_get_input();

if (_input.attack) && (image_index > 4){
	state = PLAYERSTATE.ATTACK2
}

if(animation_end()){
	
	sprite_index = sprite_paladin_idle
	state = PLAYERSTATE.LOCOMOTION
}

}

