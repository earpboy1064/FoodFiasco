/// @Fires Projectile at player
// You can write your code in this editor

thoughts = "im firing";
fire_type = floor(random_range(1,2.9)); // random number to decide fire type

if (fire_type == 1)
{
with instance_create_layer(x,y,"Instances", Food)
	{
	speed = 8;
	
	image_angle = point_direction(x,y,Player.x,Player.y);
	direction = image_angle;
	
	//direction = Student1.image_angle;
	//image_angle = direction;
	}
//show_debug_message("in alarm");

}

else { // fires triple food. 
	
	with instance_create_layer(x,y,"Instances", Food)
	{
	speed = 8;
	
	image_angle = point_direction(x,y,Player.x,Player.y);
	direction = image_angle;
	
	//direction = Student1.image_angle;
	//image_angle = direction;
	}
	with instance_create_layer(x,y,"Instances", Food)
	{
	speed = 8;
	
	image_angle = point_direction(x,y,Player.x,Player.y);
	direction = image_angle-10;
	
	//direction = Student1.image_angle;
	//image_angle = direction;
	}
	with instance_create_layer(x,y,"Instances", Food)
	{
	speed = 8;
	
	image_angle = point_direction(x,y,Player.x,Player.y);
	direction = image_angle+10;
	
	//direction = Student1.image_angle;
	//image_angle = direction;
	}
	
	
	
	}