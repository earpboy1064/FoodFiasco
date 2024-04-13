/// @description Insert description here
// You can write your code in this editor
fire_rate = 0;
standard_speed = random_range(1,3); // standard_speed cannot be modified. used to show the base speed
set_speed = standard_speed // set_speed can be modified. used to change the speed
current_speed = set_speed; // current speed can be modifed. used to denote the current moveing speed


//speed = set_speed;
range = 200;

health = 3;

sprint_Interval = 0;

timer = 0;
time = 120;

damage_counter = 100;
damage_timer = 0;
damage_flash = false;

image_speed = 0;


fire_type = 0; //determines if they will throw any or few objects

attack_type = 0; // detmines if they will chase or throw

max_distance = 0; // sets the max distance to the player the teacher will go. 
//when 0 they will hit the player if greater then 0 then they cant reach them