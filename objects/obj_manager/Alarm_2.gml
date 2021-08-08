/// @description Gunship Generator

//Only start spawning Gun Ships once player1score reaches 100
if player1score >= 100
{	
	//Choose the side where the Gun Ship will spawn
	spawnSide = irandom_range(0, 1);

	//Choose random Y position
	var gunY = irandom_range(0, room_height-56);

	if spawnSide = 0
	{
		gunShip = instance_create_layer(-64, gunY, "Instances", obj_gunship)
		//Flip horizontally so gun is facing the right way.
		gunShip.image_xscale = -2;
	}
	else
	{
		gunShip = instance_create_layer(room_width+64, gunY, "Instances", obj_gunship)
		gunShip.image_xscale = 2;
	}

	gunShip.image_yscale = 2;
}

//Decrease the spawn timer until it reaches it's min of 30 frames (.5 seconds)
if gunShipSpawnRate > 30
{
	gunShipSpawnRate--;
}

//Tell Alarm 2 to run again every gunShipSpawnRate frames
alarm[2] = gunShipSpawnRate;