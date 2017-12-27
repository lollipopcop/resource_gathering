/// @description Insert description here
// You can write your code in this editor
if(current_move !=noone){
	instance_destroy(current_move);	
}

current_move = instance_create_depth(mouse_x, mouse_y, -y ,obj_move);