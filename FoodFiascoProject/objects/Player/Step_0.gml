

try{
tilemap = layer_tilemap_get_id("Wall_Tiles")

}
player_collision_objects = [Wall,obj_Unlockable_Door,Table,FoodBar1,FoodBar2, StudentDesk,Door,obj_teacher_desk, obj_cabinet, plant, obj_chalkboard, Bookcase, tilemap];


// Game over
// takes over the player and moves them into position. this is only true if the player has won the game. 
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


//if the game is not over
if(global.game_over == false){
	
	key_Right = keyboard_check(ord("D"));
	key_Left = keyboard_check(ord("A"));
	key_Up = keyboard_check(ord("W"));
	key_Down = keyboard_check(ord("S"));

	image_angle = point_direction(x,y,mouse_x,mouse_y)

	if(keyboard_check(ord("L"))){room_goto(LargeclassroomFinal);} //debug
	if(keyboard_check(ord("F"))){room_goto(Hallway1);}
	if(keyboard_check(ord("I"))){room_goto(Intercom_room);}
	


	var move_X = (key_Right - key_Left) * movespd;
	var move_Y = ( key_Down - key_Up) * movespd;

	if place_meeting(x+move_X, y, player_collision_objects){move_X = 0;}

	if place_meeting(x, y+move_Y,player_collision_objects){move_Y = 0;}

/*
if place_meeting(x+move_X, y, Door){
move_X = 0;

}

if place_meeting(x, y+move_Y, Door){

move_Y = 0;
}
*/

	x+=move_X;
	y+=move_Y;

	if(move_X != 0 or move_Y != 0){
		if(!audio_is_playing(ogg_snd_monk_footstep_01))
		{
			audio_play_sound(ogg_snd_monk_footstep_01,10,true,3);
			}
		}
		else
		{
			audio_stop_sound(ogg_snd_monk_footstep_01);
		}

//Fires object. Note: the object is different because the player was taking damage because their hitbox overlaps with the fired projectile causing them damage. 

	if mouse_check_button_pressed(mb_left)
	{
	
		if alarm[1] == -1{
	//	with instance_create_layer(x,y,"Instances", FoodPlayer)
	//{
	//speed = 15;
	//direction = Player.image_angle;
	//image_angle = direction;
//	}


//note lower firerate is faster. it is the time between shots. 
	//broccoli slows fire rate but fires x3 the amount.
	if(current_food_index == Broccoli){
	fire_rate = 40;
	fire_triple();
	}
	
	//faster fire rate but only 1x
	if(current_food_index == Pizza){
	fire_rate = 30;
	fire();
	//fire();
	}
	
	//faster fire rate but only 1x
	if(current_food_index == Fish){
	fire_rate = 20;
	fire();
	}
	
	//faster fire rate but only 1x
	if(current_food_index == Eggs){
	fire_rate = 60;
	fire_blast();
	}
	
	
	
	alarm[1] = fire_rate;
	}
//old fire method lets player fire as fast as they want. 
	//with instance_create_layer(x,y,"Instances", FoodPlayer)
	//{
	//speed = 15;
	//direction = Player.image_angle;
	//image_angle = direction;
//	}
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
		if (obj_pickup.spawn == true)
		{
			if(obj_pickup.sprite_index == Hearts_1){health_var++;}
	
		else{
			food_fact = true;
			current_food_index = obj_pickup.sprite_index;
			//call draw box with food facts here
			show_debug_message("collision with obj_pickup")
			
			}
		}
	}


//not sure if this is doing anything.
gui_x = x;
gui_y = y;

}


//#################### Throwing functions ########################
function fire()
{
with instance_create_layer(x,y,"Instances", FoodPlayer)
	{
	speed = 15;
	direction = Player.image_angle;
	image_angle = direction;
	}
}


function fire_triple()
{
with instance_create_layer(x,y,"Instances", FoodPlayer)
	{
	speed = 15;
	direction = Player.image_angle;
	image_angle = direction;
	}
	
	with instance_create_layer(x,y,"Instances", FoodPlayer)
	{
	speed = 15;
	direction = Player.image_angle+ 20;
	image_angle = direction ;
	}
	
	with instance_create_layer(x,y,"Instances", FoodPlayer)
	{
	speed = 15;
	direction = Player.image_angle - 20;
	image_angle = direction;
	}
}

function fire_blast()
{
	var flag = false;
	
for(var i = -9; i<9; i++){
	with instance_create_layer(x,y,"Instances", FoodPlayer)
	{
	speed = 7;
	
	direction = Player.image_angle + i*5;

	image_angle = direction ;
	}
}

}
//#################### Throwing functions end ########################

//Food facts functions

