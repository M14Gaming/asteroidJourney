//Randomize seed
randomize();

//Initialize player scores
player1score = 290;

//Set spawn rates that can be increased as time passes.
asteroidSpawnRate = room_speed * (2/3);
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