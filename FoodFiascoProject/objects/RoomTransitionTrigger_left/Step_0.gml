/// @description Insert description here
// You can write your code in this editor
classroom_name = "Classroom" + string(classroom_number);
show_debug_message(classroom_name);

if place_meeting(x,y,Player)
{

Player.last_known_hall_location_x = x  + 50;
Player.last_known_hall_location_y = y;
Player.last_known_hall_direction = direction;


	
	
room_goto(asset_get_index(classroom_name));
}