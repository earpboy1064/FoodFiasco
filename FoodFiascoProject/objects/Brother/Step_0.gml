/// @description Insert description here
// You can write your code in this editor


if instance_exists(Player){
	
	image_angle = point_direction(x,y,Player.x,Player.y);
	direction = image_angle+90;
	//myPath = path_add();
	//mp_grid_path(room_grid, myPath,x,y, x - Player.x, y - Player.y//,true);
	//path_start(myPath, current_speed, path_action_stop, true);
	time++;
	
}

//calls the alarm for random intervals to fire the food if the student is within range.


// destroys the student if the player hits them with food. 
