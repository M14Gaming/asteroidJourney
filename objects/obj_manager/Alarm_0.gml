/// @description Asteroid Generator

//Select a random X and Y position
astX = irandom_range(150, room_width-150);
astY = irandom_range(150, room_height-150);

//Initialize size and asteroid variables
var size;
var asteroid;

//Create a SmallAsteroid instance
if player1score >= 1000
{
	size = choose(obj_asteroid_s, obj_asteroid_m, obj_asteroid_l);
	asteroid = instance_create_layer(astX, astY, "Instances", size);
}
else if player1score >= 500
{
	size = choose(obj_asteroid_s, obj_asteroid_s, obj_asteroid_m, obj_asteroid_m, obj_asteroid_l);
	asteroid = instance_create_layer(astX, astY, "Instances", size);
}
else if player1score >= 300
{
	size = choose(obj_asteroid_s, obj_asteroid_s, obj_asteroid_s, obj_asteroid_s, obj_asteroid_m, obj_asteroid_m, obj_asteroid_l);
	asteroid = instance_create_layer(astX, astY, "Instances", size);
}
else if player1score >= 100
{
	size = choose(obj_asteroid_s, obj_asteroid_s, obj_asteroid_s, obj_asteroid_m);
	asteroid = instance_create_layer(astX, astY, "Instances", size);
}
else asteroid = instance_create_layer(astX, astY, "Instances", obj_asteroid_s);

//Make the asteroid tiny when it spawns
asteroid.image_xscale = 0.1;
asteroid.image_yscale = 0.1;

//Draw the asteroids so they appear behind everything else
asteroid.depth = 10;

//Decrease the spawn timer until it reaches it's min of 20 frames (.33 seconds)
if asteroidSpawnRate > room_speed * (1/8)
{
	asteroidSpawnRate -= 0.1
}

//Tell Alarm 0 to run again every asteroidSpawnRate frames
alarm[0] = asteroidSpawnRate;