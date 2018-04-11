/// @description Insert description here
// You can write your code in this editor

#macro cell_width 8
#macro cell_height 8

var horizontal_cells = room_width / cell_width ;
var vertical_cells = room_height / cell_height ; 

global.movement_grid = mp_grid_create(0, 0, horizontal_cells, vertical_cells, cell_width, cell_height);

mp_grid_add_instances(global.movement_grid, obj_resource, false);
mp_grid_add_instances(global.movement_grid, obj_ship, false);
mp_grid_add_instances(global.movement_grid, obj_robot, false);