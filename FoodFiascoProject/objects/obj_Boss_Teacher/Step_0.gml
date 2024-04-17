/// @description Insert description here
// You can write your code in this editor
//This teacher object will be able to chase the player or fire projectiles at them.



		if(health == 0)
		{
		 instance_create_layer(x,y,"Instances", knocked_teacher);
		 global.game_over = true;
		 instance_destroy();
		 
		//instance_destroy();
		}
		
if(health > 0){
current_speed = set_speed;

if instance_exists(Player){
	
	image_angle = point_direction(x,y,Player.x,Player.y);
	direction = image_angle;
	myPath = path_add();
	mp_grid_path(room_grid, myPath,x,y,Player.x,Player.y,true);
	path_start(myPath, current_speed, path_action_stop, true);

}


// this stops the animation
if (damage_timer > damage_counter && damage_flash == true){ image_speed = 0; image_index=  0;}


// destroys the student if the player hits them with food. 
if place_meeting(x, y, FoodPlayer){
	
	if(damage_timer > damage_counter){
		set_speed = standard_speed;
		damage_timer = 0;
		health--;
		damage_flash = true;
	
	}
	
}

if (damage_flash == true) 
	{
	image_speed = 1;
	}
	
	
damage_timer++;
	
//if(damage_timer > damage_counter){
timer++;

// runs when time for next attack
if(timer > time)
{
	attack_type = floor(random_range(1,2.9)); // random value for selecting attack type
	
	if ( attack_type == 1) //chase attack
	{
		thoughts = "im chasing";
		set_speed = 6; // speeds up the teacher
		max_distance = 0; // sets max distance to 0 so they can collide with the player.
	}
	
timer = 0;

}

if ( attack_type == 2) // this is outside the if because we want it to run repeatedly 
	{
	set_speed = standard_speed;
	max_distance =  200;
		if alarm[0] == -1
		{
			fire_rate = random_range(60,120);
			alarm[0] = fire_rate;
		}
	
		
	}
}

/*
if(distance_to_object(Player) > max_distance) // this is only relevent when the teacher is firing. 
	{
	current_speed = set_speed; // gives the teacher back its speed so it can continue to move towards the player
	}
	
else{
	current_speed = 0; // stops the teacher from moving towards the player
	} 

*/






//allows the boss teacher to fire projectiles
//NOTE: the projectiles should prob be changed to office materials like staplers 




//show_debug_message("not in  alarm");








	
	
	

//}



