

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

if place_meeting(x+move_X, y, Door){
move_X = 0;

}

if place_meeting(x, y+move_Y, Door){

move_Y = 0;
}


x+=move_X;
y+=move_Y;


//Fires object. Note: the object is different because the player was taking damage because their hitbox overlaps with the fired projectile causing them damage. 

if mouse_check_button_pressed(mb_left)
{
	with instance_create_layer(x,y,"Instances", FoodPlayer)
	{
	speed = 20;
	direction = Player.image_angle;
	image_angle = direction;
	}
}


// checks to see if player gets hit by food and if so removes some health

if (place_meeting(x, y, Food)||place_meeting(x, y, Teacher)){
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



if place_meeting(x,y,RoomTransitionTrigger_left)
{
last_known_hall_location_x = x;
last_known_hall_location_y = y;
last_known_hall_direction = direction;

}

if place_meeting(x,y,RoomTransitionTrigger_right)
{
last_known_hall_location_x = x;
last_known_hall_location_y = y;
last_known_hall_direction = direction;

}


// Hallway transistions
if place_meeting(x,y,Hallway_transition_up)
{
last_known_hall_location_x = x;
last_known_hall_location_y = y;
last_known_hall_direction = direction;
last_hall_trans_direction = 4;

}
if place_meeting(x,y,Hallway_transition_down)
{
last_known_hall_location_x = x;
last_known_hall_location_y = y;
last_known_hall_direction = direction;
last_hall_trans_direction = 1;

}
if place_meeting(x,y,Hallway_transition_right)
{
last_known_hall_location_x = x;
last_known_hall_location_y = y;
last_known_hall_direction = direction;
last_hall_trans_direction = 3;

}
if place_meeting(x,y,Hallway_transition_left)
{
last_known_hall_location_x = x;
last_known_hall_location_y = y;
last_known_hall_direction = direction;
last_hall_trans_direction = 2;

}

// class room exits

if place_meeting(x,y,ClassroomExit)
{
hall_transition_from_class = true;
}

show_debug_message(room_get_name(room));

