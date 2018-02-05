/// @description set selected to false
// You can write your code in this editor

selected = false;

if ( !position_meeting(mouse_x, mouse_y, obj_robot_creation_button_parent)) {
	with (obj_robot_creation_button_parent) {
		instance_deactivate_object(self);	
	}
}