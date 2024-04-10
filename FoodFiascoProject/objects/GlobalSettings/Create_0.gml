/// @description Insert description here
// You can write your code in this editor
tilemap = layer_tilemap_get_id("Wall_Tiles")
global.player_collision_objects = [Wall,Table,FoodBar1,FoodBar2, StudentDesk,tilemap];
global.player_food_collision_objects = [Wall,Table, Student1, Teacher,FoodBar1,FoodBar2, StudentDesk,tilemap];