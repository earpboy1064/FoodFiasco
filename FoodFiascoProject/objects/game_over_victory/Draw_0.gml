/// @description Insert description here
// You can write your code in this editor
if(global.game_over==true)
{
if(time==300){draw_set_alpha(0);}

time++;

if(time > 300){
	
	
	if(alpha_value <= 650){
	alpha_value++;
	alpha_value++;
	draw_set_alpha((alpha_value/1000));
	
	}
	//draw_text(704,682,"Game Over")
	
	draw_rectangle_color(0,455,1408,910,c_grey,c_grey,c_grey,c_grey,false);
	draw_text_color(room_width/2,room_height/2,"Game Over", c_white,c_white,c_white,c_white,alpha_value);
}

if(alpha_value >= 550)
{
	
	audio_stop_sound(MP3_8_Bit_Main);
	audio_stop_sound(ogg_snd_monk_footstep_01);
	

		{
			if(!audio_is_playing(MP3_8_Bit_Win_Sting)){
			audio_play_sound(MP3_8_Bit_Win_Sting,10,false,1);
			if(alpha_value>650){
			game_end();
			}
			}
		}

}
//draw_set_alpha(0.5);

}



//1366
//455