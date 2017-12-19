/// @description Move the worker & assign role
// You can write your code in this editor

/* Current Bugs 
	When the last resource disappears the worker stops moving almost immediately
		This will hopefully fix the issue when you have multiple workers gathering the same resource
			can you pause an alarm?
*/

//set depth of character dynamically based on vertical placement on screen
scr_get_depth();

//if the worker has been clicked on (via the left pressed event) move it with the mouse
if ( left_pressed ) {
	x = mouse_x;
	y = mouse_y;
}

//if assigned a role that doesn't need to go anywhere place worker outside building and then have them stop moving
if ( array_resource[worker_role, 3] == "home" ){	
	var home_node = instance_nearest(x, y, array_resource[worker_role, 2]);
	if ( (distance_to_point( home_node.x + 20, home_node.y + 50 )) > 0 ){
		move_towards_point(home_node.x + 20, home_node.y + 50, worker_speed);
	} else {
		speed = 0;
	}
}

//state: resource exists && assigned a resource gathering role
if ( instance_exists(array_resource[worker_role, 1]) && (array_resource[worker_role, 3] == "gathering")) {

	//if there are no more of the assigned resources left
	if( !(instance_exists(array_resource[worker_role, 1]))){
		//and you aren't holding a resource then unassign yourself
		if ( !holding_resource ) {
			worker_role = 0;
			alarm[0] = -1;
		}
	}

	//check to see if we have held a resource
	if ( !holding_resource ){
		//move towards closest resource
		resource_node = instance_nearest(x, y, array_resource[worker_role, 1])
		
		direction = point_direction(x, y, resource_node.x, resource_node.y);
		
		if ( distance_to_object ( resource_node ) <= 10 ) {
			speed = 0;
			
			if ( alarm[0] == -1 ) {
					alarm[0] = 120;
			}
			
		} else {
			speed = (worker_speed);
		}
	}
}

//state: home exists && assigned a resource gathering role
if ( instance_exists(array_resource[worker_role, 2]) && (array_resource[worker_role, 3] == "gathering")) {
	if ( holding_resource ) {
		//move towards closest resource
		resource_node = instance_nearest(x, y, array_resource[worker_role, 2])
		
		direction = point_direction(x, y, resource_node.x, resource_node.y);
		
		if ( distance_to_object ( resource_node ) <= 10 ) {
			speed = 0;
			
			if ( alarm[1] == -1 ) {
					alarm[1] = 120;
			}
			
		} else {
			speed = (worker_speed);
		}		
	}
}