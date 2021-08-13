//Randomize seed
randomize();

//Initialize player scores and hi-scores
player1score = 300;
prevHi = global.hiScore;

//Spawn player ships based on selected mode
if (global.twoPlayers)
{
	instance_create_layer(room_width * (2/3), room_height * 0.5, "Instances", obj_player1ship);
	instance_create_layer(room_width * (1/3), room_height * 0.5, "Instances", obj_player2ship);
}
else
{
	instance_create_layer(room_width * 0.5, room_height * 0.5, "Instances", obj_player1ship);
}

//Set spawn rates that can be increased as time passes.
asteroidSpawnRate = room_speed * (1/4);
gunShipSpawnRate = room_speed * 2;
laserCannonSpawnRate = room_speed * 10;

//Tell Alarm 0 to run after 1 frame
alarm[0] = 1;

//Tell Alarm 1 to run after 1 frame
alarm[1] = 1;

//Tell Alarm 2 to run after 1 frame
alarm[2] = 1;

//Tell Alarm 3 to run after 1 frame
alarm[3] = 1;

//Screen Shake Intialization
shake = false;
shake_time = 0;
shake_magnitude = 0;
shake_fade = 0.25;