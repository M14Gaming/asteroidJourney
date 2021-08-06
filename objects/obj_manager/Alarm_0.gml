/// @description Object Generator

//Set a variable spawn rate that can be increased as time passes.
spawnRate = 40;

//Select a random X and Y position
var _x = irandom_range(150, room_width-150);
var _y = irandom_range(150, room_height-150);

//Create a SmallAsteroid instance
if player1score >= 1000
{
	size = choose(obj_asteroid_s, obj_asteroid_m, obj_asteroid_l);
	asteroid = instance_create_layer(_x, _y, "Instances", size);
}
else if player1score >= 500
{
	size = choose(obj_asteroid_s, obj_asteroid_s, obj_asteroid_m, obj_asteroid_m, obj_asteroid_l);
	asteroid = instance_create_layer(_x, _y, "Instances", size);
}
else if player1score >= 300
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

//Decrease spawnRate a bit every time Alarm 0 runs
if spawnRate > 20
{
	spawnRate = spawnRate * 0.9
}

//Tell Alarm 0 to run again every spawnRate frames
alarm[0] = spawnRate;