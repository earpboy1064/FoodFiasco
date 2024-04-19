/// @description Insert description here
// You can write your code in this editor


if instance_exists(Player){
	
	image_angle = point_direction(x,y,Player.x,Player.y);
	direction = image_angle;
	
	//This prevents the student from getting too close to the player.
	if(distance_to_object(Player) > closest_range){
	current_speed = set_speed; // gives the student back its speed so it can continue to move towards the player
	}
	else{
		current_speed = 0; // stops the student from moving towards the player
	} 

myPath = path_add();
mp_grid_path(room_grid, myPath,x,y,Player.x,Player.y,true);
path_start(myPath, current_speed, path_action_stop, true);

}

//calls the alarm for random intervals to fire the food if the student is within range.
if(distance_to_object(Player) < max_range){
if alarm[0] == -1{
	fire_rate = random_range(60,120);
	alarm[0] = fire_rate;
}
}

// destroys the student if the player hits them with food. 
if place_meeting(x, y, FoodPlayer){
	
	instance_destroy();

	StudentSpawner.current_students = StudentSpawner.current_students -1;
	}

