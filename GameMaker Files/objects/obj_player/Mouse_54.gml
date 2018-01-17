/// @description create the target and change to move state

// make sure there isn't already a target in the room
if( target != -1 && ( instance_exists( target ) ) ){
	with ( target ) instance_destroy();	
}

target = instance_create_depth(mouse_x, mouse_y, 0, obj_target);
state = "move";