/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,Player)
{
Player.spawn_marker=Player.return_marker;
room_goto(Player.last_known_hall);
}