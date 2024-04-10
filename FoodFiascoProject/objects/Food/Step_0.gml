/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

// objects the food can collide with

image_angle =image_angle+10;
if place_meeting(x,y,global.food_collision_objects)
{
	// sound here. 
	
	
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
instance_destroy(id);
}
