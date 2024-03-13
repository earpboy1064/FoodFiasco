

key_Right = keyboard_check(ord("D"));
key_Left = keyboard_check(ord("A"));
key_Up = keyboard_check(ord("W"));
key_Down = keyboard_check(ord("S"));

image_angle = point_direction(x,y,mouse_x,mouse_y)


var move_X = (key_Right - key_Left) * movespd;
var move_Y = ( key_Down - key_Up) * movespd;

if place_meeting(x+move_X, y, Wall){
move_X = 0;

}

if place_meeting(x, y+move_Y, Wall){

move_Y = 0;
}

x+=move_X;
y+=move_Y;


//Fires object 
if mouse_check_button_pressed(mb_left)
{
	with instance_create_layer(x,y,"Instances", Food)
	{
	speed = 20;
	direction = Player.image_angle;
	image_angle = direction;
	}
}


// checks to see if player gets hit by food and if so removes some health

if place_meeting(x, y, Food){
	object_set_visible(Player, false);
	if alarm[0] == -1{
		image_speed = 1;
		alarm[0] = 120;
	}

	
}

//checks to see if player is at zero health and if so it destroys the player instance
if (health_var == 0)
{
	instance_destroy(Player);
}

