/// @description Insert description here
// You can write your code in this editor

//if !instance_exists(camer)
//display_set_gui_size(1366, 1366);
draw_rectangle_color(10,10,270,60,c_white,c_white,c_white,c_white,false)
draw_set_font(room_name_font);

draw_text_color(12,12,room_get_name(room),0,0,0,0,100);

if(my_sprite_index == 31){my_sprite_index = 0;}

draw_sprite(Hearts,floor(my_sprite_index/2),15,1000);
my_sprite_index++;
