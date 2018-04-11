///scr_grid_movement(object_to_avoid, grid, destination_x, destination_y);
//will return the path to be used by the object to move

var object_to_avoid = argument0;
var grid = argument1;
var path = 0;
var destination_x = argument2;
var destination_y = argument3;

//add the mp_grid_add_instances
mp_grid_add_instances(grid, object_to_avoid, false);

// create the path

return mp_grid_path(grid, path, x, y, destination_x, destination_y, true);

//execute the path?