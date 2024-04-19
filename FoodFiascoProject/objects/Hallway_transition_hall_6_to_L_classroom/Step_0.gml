/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,Player)
{

Player.last_known_hall_location_x = Player.last_known_hall_location_x;
Player.last_known_hall_location_y = Player.last_known_hall_location_y - 80;
Player.last_known_hall_direction =  Player.last_known_hall_direction;
Player.spawn_marker = spawn_marker_a;
Player.return_marker = spawn_marker_b;
Player.last_known_hall = room;
	
if(global.final_classroom == 1){room_goto(LargeclassroomFinal);}
else{ room_goto(Largeclassroom); }
}