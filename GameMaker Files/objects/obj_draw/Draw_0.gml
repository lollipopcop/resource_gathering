/// @description draw in order of depth

if(ds_exists(ds_depth_grid, ds_type_grid)){

	//sort the grid by y value (lowest at the top)
	ds_grid_sort(ds_depth_grid, 1, true);

	//draw all instances in that order
	for(var i = 0; i < ds_grid_height(ds_depth_grid); i++){
		var index_id = ds_depth_grid[# 0, i];
		
		with(index_id){
			draw_self();	
		}
	}
	//destroy the grid so we don't get a memory leak
	ds_grid_destroy(ds_depth_grid);
}
