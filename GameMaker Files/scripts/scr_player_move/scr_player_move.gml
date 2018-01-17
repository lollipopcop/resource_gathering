///scr_ship_move

friction = 0;	//enable the player to move

//move towards target if it exists

if( instance_exists( target ) ){
	motion_add(point_direction(x, y, target.x, target.y), acc);
	
	//delete the target when we reach it
	if( position_meeting( x, y, target ) ){
		with( target ) instance_destroy();
		state = "idle";
	}
}

//don't go faster than max speed
if( speed > spd ){
	speed = spd;
}

