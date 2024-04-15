/// @description Insert description here
// You can write your code in this editor

switch(global.player_sprite)
{
case JeffSprite:
image_index = global.player_jeff_stats.speed_amount;
show_debug_message("sprite is jeff");
break;

case MichaelSprite:
image_index =  global.player_micheal_stats.speed_amount;
show_debug_message("sprite is Micheal");
break;


case SarahSprite:
image_index = global.player_sarah_stats.speed_amount;
show_debug_message("sprite is Micheal");
break;
}

draw_self();