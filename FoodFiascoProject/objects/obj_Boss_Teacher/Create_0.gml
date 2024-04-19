/// @description Insert description here
// You can write your code in this editor
fire_rate = 0;
standard_speed = random_range(1,3); // standard_speed cannot be modified. used to show the base speed
set_speed = standard_speed // set_speed can be modified. used to change the speed
current_speed = set_speed; // current speed can be modifed. used to denote the current moveing speed

//sounds that will play when they take damage.
damage_sound = [ogg_snd_knight_pain_02,ogg_snd_knight_pain_01];
//speed = set_speed;
range = 200;

health = 2; // needs to be set back to 10

sprint_Interval = 0;

timer = 0;
time = 140;//og time was 120

damage_counter = 100;
damage_timer = 0;
damage_flash = false;

image_speed = 0;


fire_type = 0; //determines if they will throw any or few objects


thoughts = "";
attack_type = 0; // determines if they will chase or throw

max_distance = 0; // sets the max distance to the player the teacher will go. 
//when 0 they will hit the player if greater then 0 then they cant reach them