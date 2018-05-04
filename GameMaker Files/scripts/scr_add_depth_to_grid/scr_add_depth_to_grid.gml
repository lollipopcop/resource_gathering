with (obj_draw){
	
	//first check to see if the depth grid exists
	if( ! ds_exists(ds_depth_grid, ds_type_grid)){
		
		//create the depth grid data structure
		ds_depth_grid = ds_grid_create(2, 1);
		
		//add the callers ID to the grid
		ds_depth_grid[# 0, 0] = other;
		
		//add the callers y value to the grid
		ds_depth_grid[# 1, 0] = other.y;
	} else {
	
		var height_of_grid = ds_grid_height(ds_depth_grid);
		ds_grid_resize(ds_depth_grid, 2, height_of_grid + 1);
	
		//add the callers ID to the grid
		ds_depth_grid[# 0, height_of_grid] = other;
		
		//add the callers Y value to the grid
		ds_depth_grid[# 1, height_of_grid] = other.y;
	}
}

