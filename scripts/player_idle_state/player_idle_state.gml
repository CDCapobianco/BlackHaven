// Gli asset per gli script sono cambiati per la versione 2.3.0; si rimanda a
// https://help.yoyogames.com/hc/en-us/articles/360005277377 per maggiori informazioni
function Player_Idle_State(){
var _input = rollback_get_input();


if(_input.left){
	x-= 3;
	movement_direction = -1
}

if(_input.right){
	x+=3;
	movement_direction = 1
}

if(_input.down){
	y+= 3;
}

if(_input.up){
	y-=3;
}



if (_input.attack) state=PLAYERSTATE.SLASH


sprite_index = (_input.right || _input.left || _input.up || _input.down)  ? sprite_paladin_walk : sprite_paladin_idle
image_xscale = 2*movement_direction
show_debug_message(movement_direction)

}