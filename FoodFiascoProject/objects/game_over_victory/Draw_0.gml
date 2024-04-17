/// @description Insert description here
// You can write your code in this editor
if(global.game_over==true)
{
if(time==300){draw_set_alpha(0);}

time++;

if(time > 300){
	
	if(alpha <= 650){
	alpha++;
	alpha++;
	draw_set_alpha((alpha/1000));
	
	}
	//draw_text(704,682,"Game Over")
	
	draw_rectangle_color(0,455,1408,910,c_grey,c_grey,c_grey,c_grey,false);
	draw_text_color(704,682,"Game Over", c_white,c_white,c_white,c_white,alpha)
}
//draw_set_alpha(0.5);

}



//1366
//455