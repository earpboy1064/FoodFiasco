/// @description Insert description here
// You can write your code in this editor

myPath = path_add();
mp_grid_path(global.grid, myPath,x,y,Player.x,Player.y,true);
path_start(myPath, 3, path_action_stop, true);