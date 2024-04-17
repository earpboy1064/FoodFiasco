


tilemap = layer_tilemap_get_id("Wall_Tiles")
player_collision_objects = [Wall,Table,FoodBar1,FoodBar2, StudentDesk,tilemap];

if(global.game_over == true)
{
	
	if(instance_exists(game_over_victory)){
		image_angle = point_direction(x,y,Brother.x,Brother.y);
		direction = image_angle+90;
		game_over_timer++;
		if(game_over_timer > 40){
		myPath = path_add();
		mp_grid_path(room_grid, myPath,x,y,game_over_victory.x,game_over_victory.y,true);
		path_start(myPath, moveSpeed, path_action_stop, true);
		}
	}
}


if(global.game_over == false){
key_Right = keyboard_check(ord("D"));
key_Left = keyboard_check(ord("A"));
key_Up = keyboard_check(ord("W"));
key_Down = keyboard_check(ord("S"));

image_angle = point_direction(x,y,mouse_x,mouse_y)

if(keyboard_check(ord("L"))){room_goto(LargeclassroomFinal);}


var move_X = (key_Right - key_Left) * movespd;
var move_Y = ( key_Down - key_Up) * movespd;

if place_meeting(x+move_X, y, player_collision_objects){
move_X = 0;

}

if place_meeting(x, y+move_Y,player_collision_objects){

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
	speed = 15;
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


roomTriggers = [RoomTransitionTrigger_left,RoomTransitionTrigger_right, RoomTransitionTrigger_Up, RoomTransitionTrigger_Down,Hallway_transition_hall_2_to_largeclassrrrom, Hallway_transition_hall_7_to_Lclassroom, Hallway_transition_hall_6_to_L_classroom];
if place_meeting(x,y,roomTriggers)
{
last_known_hall_location_x = x;
last_known_hall_location_y = y;
last_known_hall_direction = direction;
last_known_hall = room;
}


// class room exits

if place_meeting(x,y,ClassroomExit)
{
hall_transition_from_class = true;
}


// sets the food item to be whatever you picked up.
if place_meeting(x,y,obj_pickup)
{
	//changes the current_food_index to match the obj_pickup sprite. 
	//this is then used by the Player_food_object.
if (obj_pickup.spawn == true){
	if(obj_pickup.sprite_index == Hearts_1){health_var++;}
	
	else{
current_food_index = obj_pickup.sprite_index;
show_debug_message("collision with obj_pickup")
	}
}
}


//not sure if this is doing anything.
gui_x = x;
gui_y = y;

}

