//andrà generalizzato in obj_enemy

if(old_x - x != 0){
	movement_direction = (old_x - x > 0) ? -1 : 1
	image_xscale = movement_direction * sprite_scale
}

if(point_distance(x,y,obj_player.x,obj_player.y) < 50){
	movement_speed = 0
}else{
	movement_speed = 1
}

current_speed = movement_speed * (abs(x - old_x) + abs(y - old_y))
old_x = x
old_y = y
mp_potential_step(obj_player.x,obj_player.y,movement_speed,1)

sprite_index = (current_speed > 0)  ? sprite_skeleton_walk : sprite_skeleton_idle
