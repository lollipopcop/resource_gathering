/// @description Set variables

global.workers += 1;

worker_role = 0;
left_pressed = false;
holding_resource = false;
worker_speed = room_speed/20;

resource_node = noone;

speed = 0;


/*Array Structure
[x, 0] = job title
[x, 1] = object that is being gathered (if any)
[x, 2] = object that is 'home'
[x, 3] = role classification
*/

//setup resource data array
array_resource[0, 0] = "unassigned";
array_resource[0, 1] = obj_world;
array_resource[0, 2] = noone;
array_resource[0, 3] = "unassigned"

array_resource[1, 0] = "gatherer";
array_resource[1, 1] = obj_resource_berries;
array_resource[1, 2] = obj_building_gathering;
array_resource[1, 3] = "gathering";

array_resource[2, 0] = "lumberjack";
array_resource[2, 1] = obj_resource_lumber;
array_resource[2, 2] = obj_building_lumber;
array_resource[2, 3] = "gathering";


array_resource[3, 0] = "homecare";
array_resource[3, 1] = noone;
array_resource[3, 2] = obj_building_hut;
array_resource[3, 3] = "home";
