/// @description Set Move Location
// You can write your code in this editor

//move towards the location that has been clicked!
move_to_x = mouse_x;
move_to_y = mouse_y;

speed = room_speed/8;
move_towards_point(move_to_x, move_to_y, speed);
