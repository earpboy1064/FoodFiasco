/// @description Insert description here
// You can write your code in this editor
hallway_name = "Hallway" + string(hallway_number);
show_debug_message(hallway_name);

if place_meeting(x,y,Player)
{

Player.last_known_hall_location_x = Player.last_known_hall_location_x;
Player.last_known_hall_location_y = Player.last_known_hall_location_y - 80;
Player.last_known_hall_direction =  Player.last_known_hall_direction;


	
if ( has_been_set == false ) {	
room_goto(asset_get_index(hallway_name));
}
else{
	room_goto(asset_get_index(last_hallway));
}
}