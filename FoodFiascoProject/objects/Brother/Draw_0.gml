/// @description Insert description here
// You can write your code in this editor
draw_self();

if(time > 350)
{
	
	draw_text(x-70,y+10,thoughts[thought_index]);
	
	
}

if ( time > 500) {time = 0; thought_index = floor(random_range(0,2.9));}
