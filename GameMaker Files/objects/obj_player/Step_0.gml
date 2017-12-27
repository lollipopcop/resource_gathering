/// @description Character Animation
// You can write your code in this editor

//set depth of character
scr_get_depth();

//rotate sprite based on direction of character movement
if(prev_x < x){
	image_xscale = 1;
} else if (prev_x > x) {
	image_xscale = -1;
}

prev_x = x;

//if the player has reached their destination then stop moving
if ( distance_to_point(move_to_x, move_to_y) <= 0) {
	speed = 0;	
}
