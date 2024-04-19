/// @description Insert description here
// You can write your code in this editor
tilemap = layer_tilemap_get_id("Wall_Tiles")

//player_sprite  = JeffSprite;

sprite_index = global.player_sprite;



player_collision_objects = [Wall,Table,FoodBar1,FoodBar2, StudentDesk,tilemap];

moveSpeed = 5;
xpressed = false;
ypressed = false;
image_speed = 0;

movespd = 5;


health_var = 3;

hall_transition_from_class = false;
last_known_hall_location_x = 0;
last_known_hall_location_y = 0;
last_known_hall_direction = 0;

last_known_hall = "";
return_marker = spawn_marker_a;

last_hall_trans_direction = 0;
//1 - down, 2 - left, 3 - right, 4 - up

spawn_marker = spawn_marker_a

gui_x = x;
gui_y = y;


my_sprite_index = 0;

//whatever sprite we are using for the hearts
heart_sprite = ""

current_food_index = Pizza;

game_over_timer = 0;
food_fact = false;
food_fact_timer = 0;

// does the player have the key
key=false;
//key=true; //debug 

i = 0;
time_elapsed = 0;
total_time = 300;
time_left_minutes = 5;
time_left_seconds = 0;

time_left = 0;
