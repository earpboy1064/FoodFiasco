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

draw_text_color(1002,1002, floor(current_time/1000),0,0,0,0,100);



if(my_sprite_index == 31){my_sprite_index = 0;}


// draws the hearts on the screen This also handles the speed of the hearts 
draw_sprite(heart_sprite,floor(my_sprite_index/2),15,1000);
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

	draw_sprite(Broccoli_text,1,1024,928);

}

