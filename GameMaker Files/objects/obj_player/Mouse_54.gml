/// @description create the target and change to move state

// make sure there isn't already a target in the room
if( target != -1 && ( instance_exists( target ) ) ){
	with ( target ) instance_destroy();	
}

target = instance_create_depth(mouse_x, mouse_y, 0, obj_target);


//create path

if(1) {//remove for testing

//check if there is something blocking the path if yes do grid thing
	if( scr_check_path(x, y, target.x, target.y, bbox_left, bbox_right, bbox_top, bbox_bottom) == false) {
		state = "move_grid";
		mp_grid_path(global.movement_grid, path, x, y, mouse_x, mouse_y, true);		
	} else {
		state = "move_line"
		mp_linear_path_object(path, target.x, target.y, spd, obj_collision);
	}

//start following of path
path_start(path, spd, path_action_stop, false);
}