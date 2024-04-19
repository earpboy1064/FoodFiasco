/// @description Insert description here
// You can write your code in this editor

if position_meeting(mouse_x, mouse_y, id){
	
if mouse_check_button_pressed(mb_left)
{
global.game_start = true;
global.start_time = current_time;
room_goto(asset_get_index("caf"));
}
}