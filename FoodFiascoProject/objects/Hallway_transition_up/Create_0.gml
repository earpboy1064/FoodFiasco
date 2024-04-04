/// @description Insert description here
// You can write your code in this editor
hallway_number = ceil(random_range(1,2));

//concats the classroom number to the name of the class rooms to be used in the step event
hallway_name = ""

last_hallway = Player.last_known_hall;

has_been_set = false;


if (Player.last_hall_trans_direction == 1)
{
hallway_name = last_hallway
}
else
{
hallway_name = "Hallway" + string(hallway_number);
}