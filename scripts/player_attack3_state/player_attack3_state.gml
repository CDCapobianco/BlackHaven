// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function Player_Attack3_State(){

Process_Attack(sprite_paladin_attack3,sprite_paladin_attack3_hb)
if(animation_end()){
	
	sprite_index = sprite_paladin_idle
	state = PLAYERSTATE.LOCOMOTION
}
}