/// @description Insert description here
// You can write your code in this editor


if instance_exists(Player){
	
	image_angle = point_direction(x,y,Player.x,Player.y);
	direction = image_angle;
	
	//This prevents the student from getting too close to the player.
	if(distance_to_object(Player) > range){
	speed = set_speed; // gives the student back its speed so it can continue to move towards the player
	}
	else{
		speed = 0; // stops the student from moving towards the player
	} 

}


//show_debug_message("not in  alarm");

//calls the alarm for random intervals to fire the food
if alarm[0] == -1{
	fire_rate = random_range(60,120);
	alarm[0] = fire_rate;
}

// destroys the student if the player hits them with food. 
if place_meeting(x, y, FoodPlayer){
	instance_destroy();
	StudentSpawner.current_students = StudentSpawner.current_students -1;
	}

