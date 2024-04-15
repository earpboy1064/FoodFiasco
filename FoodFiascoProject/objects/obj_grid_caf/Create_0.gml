/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
globalvar room_grid;
//room_grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
room_grid = mp_grid_create(0, 0, room_width div 64, room_height div 64, 64, 64);

//collision_objects = layer_get_all_elements("Instances_collision");
mp_grid_add_instances(room_grid, Wall, false);

collision_objects = [Table, FoodBar1, FoodBar2, Door, StudentDesk,obj_teacher_desk, obj_ai_bounds];
for( i = 0; i < array_length(collision_objects); i++)
{
//	show_debug_message(object_get_name(collision_objects[i]));
	mp_grid_add_instances(room_grid,collision_objects[i], true); // adds objects to the grid to avoid
}
