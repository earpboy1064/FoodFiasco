/// @description Insert description here
// You can write your code in this editor


if instance_exists(Player){
	
	image_angle = point_direction(x,y,Player.x,Player.y);
	direction = image_angle;
	
}


//show_debug_message("not in  alarm");

//calls the alarm for random intervals to fire the food
if (damage_flash == true) 
	{
	image_speed = 1;
	}
	damage_timer++;
if(damage_timer > damage_counter){
timer++;
if(timer > time)
{
speed = 5;
timer = 0;
}

if(timer > 60 && speed == 5)
{
speed = set_speed;
}





if (damage_timer > damage_counter && damage_flash == true){ image_speed = 0; image_index=  0;}

// destroys the student if the player hits them with food. 
if place_meeting(x, y, FoodPlayer){
	
	if(damage_timer > damage_counter){
		speed = set_speed;
		damage_timer = 0;
		health--;
		damage_flash = true;
	
		if(health == 0)
		{
		instance_destroy();
		TeacherSpawner.current_teachers = TeacherSpawner.current_teachers -1;
		}
	}
	
}
	
	
	

}


