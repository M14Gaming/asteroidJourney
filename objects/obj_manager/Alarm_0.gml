/// @description Object Generator

//Select a random X and Y position
var _x = irandom_range(250, room_width-250);
var _y = irandom_range(150, room_height-150);

//Create a SmallAsteroid instance
if player1score >= 300
{
	size = choose(obj_asteroid_s, obj_asteroid_s, obj_asteroid_s, obj_asteroid_s, obj_asteroid_m, obj_asteroid_m, obj_asteroid_l);
	asteroid = instance_create_layer(_x, _y, "Instances", size);
}
else if player1score >= 100
{
	size = choose(obj_asteroid_s, obj_asteroid_s, obj_asteroid_s, obj_asteroid_m);
	asteroid = instance_create_layer(_x, _y, "Instances", size);
}
else asteroid = instance_create_layer(_x, _y, "Instances", obj_asteroid_s);

//Make the asteroid tiny when it spawns
asteroid.image_xscale = 0.1;
asteroid.image_yscale = 0.1;

//Draw the asteroids so they appear behind everything else
asteroid.depth = 10;

//Tell Alarm 0 to run again after 60 frames
alarm[0] = 60;