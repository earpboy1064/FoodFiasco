/// @description Insert description here
// You can write your code in this editor
if position_meeting(mouse_x, mouse_y, id){
	
if mouse_check_button_pressed(mb_left)
{
global.Player_sprite_index--;
if(global.Player_sprite_index < 0){ global.Player_sprite_index = 2;} 
global.player_sprite = Player_sprites[global.Player_sprite_index]

}
}