/// @description Insert description here
// You can write your code in this editor
draw_self();

if(global.game_over == false){
if(time > 350)
{
	
	draw_text(x-70,y+10,thoughts[thought_index]);
	
	
}

if ( time > 500) {time = 0; thought_index = floor(random_range(0,2.9));}
}

else{
	game_over_timer++;
	if(game_over_timer > 250){
		
		
	if(text_alpha > 0){
	text_alpha--;
	}
	
	}
	draw_text_color(x,y-50,"You saved the day!",c_white,c_white,c_white,c_white,text_alpha/10);
}

	