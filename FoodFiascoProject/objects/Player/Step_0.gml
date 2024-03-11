/// @description Insert description here
// You can write your code in this editor
/*
key_up = keyboard_check(ord("W"));
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));


move_y = (  key_down - key_up ) * moveSpeed
y += move_y;

move_x = (key_right - key_left ) * moveSpeed
x += move_x;

*/

key_Right = keyboard_check(ord("D"));
key_Left = keyboard_check(ord("A"));
key_Up = keyboard_check(ord("W"));
key_Down = keyboard_check(ord("S"));

image_angle = point_direction(x,y,mouse_x,mouse_y)


var move_X = (key_Right - key_Left) * movespd;
var move_Y = ( key_Down - key_Up) * movespd;

if place_meeting(x+move_X, y, Wall){
move_X = 0;

}

if place_meeting(x, y+move_Y, Wall){

move_Y = 0;
}



x+=move_X;
y+=move_Y;

if mouse_check_button_pressed(mb_left)
{
	with instance_create_layer(x,y,"Instances", Food)
	{
	speed = 20;
	direction = Player.image_angle;
	image_angle = direction;
	}
}



/*
else{
if (keyboard_check(ord("W")))
{
y -= moveSpeed;
}


if( keyboard_check(ord("S")))
{
y += moveSpeed;
}

if( keyboard_check(ord("D")))
{
x += moveSpeed;
}

if( keyboard_check(ord("A")))
{
x -= moveSpeed;
}
}
*/