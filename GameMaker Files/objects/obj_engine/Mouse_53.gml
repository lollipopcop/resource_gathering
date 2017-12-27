/// @description Insert description here
// You can write your code in this editor

//check if there is already an instance of obj_move on the screen
if(current_move !=noone){
	instance_destroy(current_move);	
}

//create an instance of obj_move and save the instance to a variable
current_move = instance_create_depth(mouse_x, mouse_y, -y , obj_move);