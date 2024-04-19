/// @description Insert description here
// You can write your code in this editor
tilemap = layer_tilemap_get_id("Wall_Tiles")
global.player_collision_objects = [Wall,Table,FoodBar1,FoodBar2, StudentDesk,tilemap];
global.player_food_collision_objects = [Wall,Table, obj_Unlockable_Door,Student1, Teacher,FoodBar1,FoodBar2, StudentDesk,tilemap];
global.food_collision_objects = [Wall,obj_Unlockable_Door,Table,FoodBar1,FoodBar2, StudentDesk,Player,obj_cabinet,obj_chalkboard,obj_teacher_desk,plant,Bookcase,tilemap];

global.pickup_items = [Broccoli, Eggs, Fish, Pizza];

global.player_sprite = JeffSprite;
global.Player_sprite_index = 0;

global.Player_sprites = [JeffSprite, MichaelSprite, SarahSprite];


global.player_jeff_stats =
{
name: "jeff",
health_amount: 10,
speed_amount: 5,
strength: 5,
}
global.player_sarah_stats =
{
name: "sarah",
health_amount: 5,
speed_amount: 5,
strength: 10,
}
global.player_micheal_stats =
{
name: "micheal",
health_amount: 5,
speed_amount: 10,
strength: 5,
}



randomize();


//uncomment when testing is done
//global.final_classroom = floor(random_range(1,4.9));
global.final_classroom = 2;
show_debug_message(global.final_classroom);

global.game_over = false;
global.game_start = false;
global.start_time = 0;

global.current_time = 0;
time_temp = 0;