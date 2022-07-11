var _input = rollback_get_input();

movement_direction = _input.right - _input.left


if(_input.left){
	x-= 3;
}

if(_input.right){
	x+=3;
}

if(_input.down){
	y+= 3;
}

if(_input.up){
	y-=3;
}


image_xscale = 2*( movement_direction != 0 ? movement_direction : 1)
sprite_index = movement_direction != 0 ? sprite_hero_walk : sprite_hero_idle


