/// @description Release Worker After Move
// You can write your code in this editor

//if the worker is moved onto a building change it's role

if( place_meeting( x, y, obj_building_gathering )){
	worker_role = 1;
}
	
if( place_meeting( x, y, obj_building_lumber )){
	worker_role = 2;
}
	
if( place_meeting( x, y, obj_building_hut )){
	worker_role = 3;
}

resource_node = resource_data[worker_role, 1];

left_pressed = false;
