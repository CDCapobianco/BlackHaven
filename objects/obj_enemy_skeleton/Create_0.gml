sprite_scale = 1.5
image_xscale = sprite_scale
image_yscale = sprite_scale

movement_direction = 1
old_x = x
old_y = y
movement_speed = 1

enum ENEMYSTATE
{
	LOCOMOTION,
	ATTACK1,
	ATTACK2,
	ATTACK3
	
}

state = ENEMYSTATE.LOCOMOTION
hitByAttack = ds_list_create()