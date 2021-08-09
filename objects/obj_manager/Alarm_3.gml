/// @description Laser Cannon Generator

//Only start spawning Laser Cannons once player1score reaches 300
if player1score >= 300
{	
	var cannon;
	
	//Choose the position where the laser cannon will spawn
	spawnPos = irandom_range(1, 3)
	
	//Spawn the Laser Cannon at it's chosen spawn point
	switch (spawnPos)
	{
		case 1:
		cannon = instance_create_layer(room_width * 0.25, -50, "Instances", obj_lasercannon);
		break;
		
		case 2:
		cannon = instance_create_layer(room_width * 0.5, -50, "Instances", obj_lasercannon);
		break;
		
		case 3:
		cannon = instance_create_layer(room_width * 0.75, -50, "Instances", obj_lasercannon);
		break;
	}

	cannon.image_yscale = 2;
	cannon.image_xscale = 2;
}

//Decrease the spawn timer until it reaches it's min of 300 frames (5 seconds)
if laserCannonSpawnRate > room_speed * 5
{
	laserCannonSpawnRate--;
}

//Tell Alarm 3 to run again every laserCannonSpawnRate frames
alarm[3] = laserCannonSpawnRate;
