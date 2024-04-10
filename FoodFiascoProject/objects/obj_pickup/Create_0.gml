/// @description Insert description here
// You can write your code in this editor

random_set_seed(current_time);
random_sprite = ceil(random_range(0,3));
show_debug_message(random_sprite);

pickup_items = [Broccoli, Eggs, Fish, Pizza];

sprite_index = pickup_items[random_sprite];
sprite = pickup_items[random_sprite];


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