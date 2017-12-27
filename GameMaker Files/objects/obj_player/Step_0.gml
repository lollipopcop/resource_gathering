/// @description Insert description here
// You can write your code in this editor

scr_get_depth();

if(prev_x < x){
	image_xscale = 1;
} else if (prev_x > x) {
	image_xscale = -1;
}

prev_x = x;

if ( distance_to_point(move_to_x, move_to_y) <= 0) {
	speed = 0;	
}
