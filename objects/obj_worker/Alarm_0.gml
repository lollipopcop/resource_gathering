/// @description resource gathered!
// You can write your code in this editor

//if you've gathered a resource and are returning to your workshop
if(holding_resource){
	//deposit resource
	
	switch(worker_role){
		case 1:
			global.berries ++;
			break;
		case 2:
			global.lumber ++;
			break;
	}
	
	if(instance_exists(resource_data[worker_role, 1])){
		resource_node = instance_nearest(x, y, resource_data[worker_role, 1]);
	}
	else{
		worker_role = 0;
	}
	
	holding_resource = false;
	exit;
}

//if you are out gathering and don't have a resource yet
if(!holding_resource){
	//gather resource
	resource_node.total_resource --;
	resource_node = instance_nearest(x, y, resource_data[worker_role, 2]);
	holding_resource = true;
	
	exit;
}