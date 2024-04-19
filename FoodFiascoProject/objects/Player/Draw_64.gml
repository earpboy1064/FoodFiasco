/// @description Insert description here
// You can write your code in this editor

//if !instance_exists(camer)
//display_set_gui_size(1366, 1366);

if( global.game_over == false){
//sets the heart sprite
if (health_var = 3) {heart_sprite = Hearts_3;}
if (health_var = 2) {heart_sprite = Hearts_2;}
if (health_var = 1) {heart_sprite = Hearts_1;}


//draws the rectangle behind the room name so you can see it better. 
draw_rectangle_color(10,10,270,60,c_white,c_white,c_white,c_white,false)
draw_set_font(room_name_font);

draw_text_color(12,12,room_get_name(room),0,0,0,0,100);

//timer
time_elapsed = floor((current_time-global.start_time)/1000)
time_left = floor(total_time-time_elapsed)
time_left_minutes = floor(time_left / 60);
time_left_seconds = floor(time_left % 60);

//draw_text_color(1002,12,"Timeleft:" +  floor((current_time-global.start_time)/1000),c_white,c_white,c_white,c_white,100);
draw_text_color(1002,12,"Timeleft: " +  string(time_left_minutes) + ":"+string(time_left_seconds),c_white,c_white,c_white,c_white,100);


if(key == true)
{
	
	draw_sprite_stretched(Key,1,1200,1200,sprite_get_width(Key)*2,sprite_get_height(Key)*2)
}


if(my_sprite_index == 31){my_sprite_index = 0;}


// draws the hearts on the screen This also handles the speed of the hearts 
draw_sprite(heart_sprite,floor(my_sprite_index/2),15,1200);
my_sprite_index++;

}



if (food_fact == true ) { 
	
	food_fact_timer++;
	
	if(food_fact_timer < 180){
	food_facts();
	}
	else{
		food_fact_timer = 0;
		food_fact = false;
	}
	
	
	}

function food_facts() 
{

	if(current_food_index == Broccoli){
	draw_sprite(Broccoli_text,1,1024,928);
	}
	
	if(current_food_index == Eggs){
	draw_sprite(egg_text,1,1024,928);
	}
	
	if(current_food_index == Fish){
	draw_sprite(fish_text,1,1024,928);
	}
	
	if(current_food_index == Pizza){
	draw_sprite(pizza_text,1,1024,928);
	}
}

