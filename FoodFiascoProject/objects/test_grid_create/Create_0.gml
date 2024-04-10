/// @description Insert description here
// You can write your code in this editor
global.grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
mp_grid_add_instances(global.grid, Wall, false);
mp_grid_add_instances(global.grid, Table, false);

