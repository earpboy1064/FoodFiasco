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