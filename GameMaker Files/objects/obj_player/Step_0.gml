/// @description control the state

#region //state machine

if( state == "move_grid" || state == "move_line"){
	scr_player_move();
}

if( state == "idle" ){
	scr_player_idle();	
}

#endregion

#region //movement
	
	if (state == "move_grid") {
		if( collision_line(x, y, target.x, target.y, obj_collision, false, true) == noone){
			mp_linear_path(path, target.x, target.y, spd, false);
			path_start(path, spd, path_action_stop, false);
			state = "move_line";
		}
	}
	
	if(0) { //remove for testing
		if (state == "move" && target != -1) {
			mp_potential_step_object(target.x, target.y, spd, obj_resource);
		}
	}
#endregion

#region //change image direction
//face the direction you are moving
//TODO change the way the image is facing 

if ( direction > 270 || direction < 90 ) {
	image_xscale = 1;	
} else if ( direction > 90 && direction < 270 ) {
	image_xscale = -1;	
}
#endregion