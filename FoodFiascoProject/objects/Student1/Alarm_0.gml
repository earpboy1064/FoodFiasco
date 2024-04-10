/// @Fires Projectile at player
// You can write your code in this editor
with instance_create_layer(x,y,"Instances", Food)
	{
	speed = 5;
	
	image_angle = point_direction(x,y,Player.x,Player.y);
	direction = image_angle;
	
	//direction = Student1.image_angle;
	//image_angle = direction;
	}
	show_debug_message("in alarm");