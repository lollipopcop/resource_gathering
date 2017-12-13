/// @description Troubleshoot Worker Attributes
// You can write your code in this editor

//note both of these will only work if only one worker is present in the level



//test to see what left_pressed is currently
draw_set_color(c_black);
draw_text(150, 30, "left_pressed: " + string(left_pressed));

//check to see if worker role is properly assigned
draw_text(150, 50, "assigned: " + array_resource[worker_role, 0]);
draw_text(150, 10, "holding resource: " + string(holding_resource));
