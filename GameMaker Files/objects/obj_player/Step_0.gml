/// @description control the state

event_inherited();

if( state == "move" ){
	scr_player_move();
} else if( state == "idle" ){
	scr_player_idle();	
}

//face the direction you are moving
//TODO change the way the image is facing 

if ( direction > 270 || direction < 90 ) {
	image_xscale = 1;	
} else if ( direction > 90 && direction < 270 ) {
	image_xscale = -1;	
}
