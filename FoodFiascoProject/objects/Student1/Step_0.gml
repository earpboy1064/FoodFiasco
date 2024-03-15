/// @description Insert description here
// You can write your code in this editor


if instance_exists(Player){
image_angle = point_direction(x,y,Player.x,Player.y);
}


show_debug_message("not in  alarm");
if alarm[0] == -1{
	alarm[0] = 60;
}
