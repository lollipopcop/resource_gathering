///scr_check_path(start_x, start_y, end_x, end_y, collision_left, collision_right, collision_top, collision_bottom)

//returns true if there is a straight line
//returns false if there is an object blocking the path

var start_x = argument0;
var start_y = argument1;
var end_x = argument2;
var end_y = argument3;
var bb_left = argument4;
var bb_right = argument5;
var bb_top = argument6;
var bb_bottom = argument7;

var bb_left_offset = bb_left - start_x;
var bb_right_offset = bb_right - start_x;

var bb_top_offset = bb_top - start_y;
var bb_bottom_offset = bb_bottom - start_y;

var test = 0;

//the last couple varialbes for the collision_line checking are set here for all checks
var object = obj_collision;
var prec = true;
var notme = true;

//turn troubleshooting code on (true) or off (false)
var test_code = false;

//if we are traveling up to the left 
if((end_x <= start_x && end_y <= start_y)){
	//check to see if either line is intercepted
	
	//left line
	test = collision_line(
		start_x + bb_left_offset, 
		start_y + bb_bottom_offset, 
		end_x + bb_left_offset,
		end_y + bb_bottom_offset,
		object,
		prec,
		notme );
	
	if(test != noone){
		return false;	
	}
	
	//right line
	test = collision_line(
		start_x + bb_right_offset, 
		start_y + bb_top_offset, 
		end_x + bb_right_offset,
		end_y + bb_top_offset,
		object,
		prec,
		notme );
		
	if(test != noone){
		return false;	
	}
}

//if we are traveling up to the right 
if((end_x > start_x && end_y <= start_y)){
	//check to see if either line is intercepted
	
	//left line
	test = collision_line(
		start_x + bb_left_offset, 
		start_y + bb_top_offset, 
		end_x + bb_left_offset,
		end_y + bb_top_offset,
		object,
		prec,
		notme );
	
	if(test != noone){
		return false;	
	}
	
	//right line
	test = collision_line(
		start_x + bb_right_offset, 
		start_y + bb_bottom_offset, 
		end_x + bb_right_offset,
		end_y + bb_bottom_offset,
		object,
		prec,
		notme );
		
	if(test != noone){
		return false;	
	}
}

//if we are traveling down to the left 
if((end_x <= start_x) && (end_y > start_y)){
	//check to see if either line is intercepted
	
	//left line
	test = collision_line(
		start_x + bb_left_offset, 
		start_y + bb_top_offset, 
		end_x + bb_left_offset,
		end_y + bb_top_offset,
		object,
		prec,
		notme );
	
	if(test != noone){
		return false;	
	}
	
	//right line
	test = collision_line(
		start_x + bb_right_offset, 
		start_y + bb_bottom_offset, 
		end_x + bb_right_offset,
		end_y + bb_bottom_offset,
		object,
		prec,
		notme );
		
	if(test != noone){
		return false;	
	}
}

//if we are traveling down to the right 
if((end_x > start_x) && (end_y > start_y)){
	//check to see if either line is intercepted
	
	//left line
	test = collision_line(
		start_x + bb_left_offset, 
		start_y + bb_bottom_offset, 
		end_x + bb_left_offset,
		end_y + bb_bottom_offset,
		object,
		prec,
		notme );
	
	if(test != noone){
		return false;	
	}
	
	//right line
	test = collision_line(
		start_x + bb_right_offset, 
		start_y + bb_top_offset, 
		end_x + bb_right_offset,
		end_y + bb_top_offset,
		object,
		prec,
		notme );
		
	if(test != noone){
		return false;	
	}
}

//check to see if a simple line finds the collision
test = collision_line(
	start_x,
	start_y,
	end_x,
	end_y,
	object,
	prec,
	notme);

//for troubleshooting draw a line between the start and end positions of the check
if(test_code) { 
	draw_set_color(c_black);
	draw_line(start_x, start_y, end_x, end_y);
}

if (test != noone){
	return false;	
}

return true;