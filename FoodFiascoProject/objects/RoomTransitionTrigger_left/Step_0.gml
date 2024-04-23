/// @description Insert description here
// You can write your code in this editor
classroom_name = "Classroom" + string(classroom_number);
//show_debug_message(classroom_name);

if place_meeting(x,y,Player)
{

Player.last_known_hall_location_x = Player.last_known_hall_location_x  + 80;
Player.last_known_hall_location_y =Player.last_known_hall_location_y;
Player.last_known_hall_direction =Player.last_known_hall_direction;
Player.last_known_hall = room;
Player.spawn_marker = spawn_marker_a;
	
	
room_goto(asset_get_index(classroom_name));
}