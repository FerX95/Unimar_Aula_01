var jump_key = keyboard_check_pressed(vk_space);

vspeed += grav;

if(jump_key and is_ground){
	is_ground = false;
	vspeed = -jump_force;
}

if(place_meeting(x, y+vspeed, obj_collider)){
	while(!place_meeting(x, y+sign(vspeed), obj_collider)){
		y += sign(vspeed);
	}
	vspeed = 0;
	is_ground = true;
}