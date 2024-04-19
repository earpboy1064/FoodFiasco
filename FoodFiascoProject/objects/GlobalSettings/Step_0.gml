/// @description Insert description here
// You can write your code in this editor
global.current_time++;
//global.current_time = global.current_time/30; //30 frames a second. 

//game time is 9000 frames or 5 minutes

if(global.game_start == true)
{
	audio_stop_sound(MP3_Hopeful_Main);
if(!audio_is_playing(MP3_8_Bit_Main))
		{
			audio_play_sound(MP3_8_Bit_Main,10,true,0.5);
			}
}

if(global.game_start == false)
{
if(!audio_is_playing(MP3_Hopeful_Main))
		{
			audio_play_sound(MP3_Hopeful_Main,10,true,0.5,30);
			}
}