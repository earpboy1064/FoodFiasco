/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x, mouse_y, id){
	
if mouse_check_button_pressed(mb_left)
{
	//lets the charecters loop
	global.Player_sprite_index++;
	if(global.Player_sprite_index == 3){global.Player_sprite_index = 0;}
	show_debug_message("button pressed")
	global.player_sprite = Player_sprites[global.Player_sprite_index]
	
	
}
}