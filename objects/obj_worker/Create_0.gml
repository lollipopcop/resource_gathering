/// @description Set variables

global.workers += 1;

worker_role = 0;
left_pressed = false;
holding_resource = false;

//setup resource data array
resource_data[0, 0] = "unassigned";
resource_data[0, 1] = obj_world;

resource_data[1, 0] = "gatherer";
resource_data[1, 1] = obj_resource_berries;
resource_data[1, 2] = obj_building_gathering;

resource_data[2, 0] = "lumberjack";
resource_data[2, 1] = obj_resource_lumber;
resource_data[2, 2] = obj_building_lumber;

resource_data[3, 0] = "homecare";
resource_data[3, 1] = noone;
resource_data[3, 2] = obj_building_hut;