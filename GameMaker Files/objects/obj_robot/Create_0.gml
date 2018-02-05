/// @description 

scr_robot_init();

selected = false;
button_distance = 64
button_object[0] = obj_robot_button_gather;
button_object[1] = obj_robot_button_defend;
button_count = array_length_1d(button_object);
button_section_size = 360/button_count;
button_xpos[0] = 0;
button_ypos[0] = 0;

for (var i = 0; i < button_count; i++){
	button_xpos[i] = x + lengthdir_x( button_distance, button_section_size * i);	
	button_xpos[i] = y + lengthdir_y( button_distance, button_section_size * i);
	button[i] = instance_create_depth(button_xpos[i], button_ypos[i], 100, button_object[i]);
	instance_deactivate_object(button[i]);
}
