/// @description Insert description here
// You can write your code in this editor

// objects the food can collide with

//image_index = sprite_choice;

image_angle =image_angle+10;
if place_meeting(x,y,global.player_food_collision_objects)
{
	// sound here. 
	impactx = x;
	impacty = y;
	//draw_sprite(impact,-1,impactx,impacty);
	//flag to indicate timer to start so the food can hit the target and 
	//not get deleted before it makes it there. 
	start = true;
	
	
}

//starts the timer
if(start == true){
counter++;
}
//if the timer is 3 then we delete the food and set the flag to false.
if( counter == 3)
{
counter = 0;
start = false;
//for( i = 0; i < 18; i++){
	
//}
instance_destroy(id);



}
