/// @description Move the worker & assign role
// You can write your code in this editor

scr_get_depth();

speed = 0;


//if the worker has been clicked on (via the left pressed event) move it with the mouse
if(left_pressed){
	x = mouse_x;
	y = mouse_y;
}

//if the worker has been assigned let it do the associated action


if( worker_role != 0 && worker_role != 3) && instance_exists(resource_data[worker_role, 1]){
	
	direction = point_direction(x, y, resource_node.x, resource_node.y);
	
	if ( distance_to_point(resource_node.x, resource_node.y ) < 10 ){
		speed = 0;
		if(alarm[0] = -1) {
			alarm[0] = 10;
		}
	} else {
		speed = room_speed/5;
	}
}