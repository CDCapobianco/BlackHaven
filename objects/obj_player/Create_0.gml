y = room_height/2;

image_xscale = 2
image_yscale = 2

movement_direction = 1

if(player_id == 0){
	x = 250;
}else if(player_id==1){
	x = room_width - 250;
}


enum PLAYERSTATE
{
	LOCOMOTION,
	ATTACK1,
	ATTACK2,
	ATTACK3
	
}

state = PLAYERSTATE.LOCOMOTION
hitByAttack = ds_list_create()