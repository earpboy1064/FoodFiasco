/// @description Insert description here
// You can write your code in this editor


random_set_seed(current_time);



spawn = false;
random_spawn = floor(random_range(1,2));
if(random_spawn == 1){spawn = true;



random_sprite = floor(random_range(0,4.9));
show_debug_message(random_sprite);



pickup_items = [Broccoli, Eggs, Fish, Pizza, Hearts_1];

sprite_index = pickup_items[random_sprite];
sprite = pickup_items[random_sprite];
}

/*
/// @description Insert description here
// You can write your code in this editor
draw_self();

//draw_sprite_stretched(sprite,1,x,y,sprite_get_width(sprite)*2,sprite_get_height(sprite)*2)

/*
if(collision_rectangle(x,y,sprite_get_width(sprite)*2,sprite_get_height(sprite)*2,Player,true,false))
{
Player.current_food_index = sprite;
}

*/