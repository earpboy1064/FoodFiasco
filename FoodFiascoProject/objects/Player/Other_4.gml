/// @description Insert description here
// You can write your code in this editor



if (hall_transition_from_class == true)
{
x = last_known_hall_location_x;
y = last_known_hall_location_y;
direction = last_known_hall_direction + 180;
hall_transition_from_class = false;
}

else if (object_exists(spawn_marker))
{
x= spawn_marker.x
y = spawn_marker.y;
direction = spawn_marker.direction;
}