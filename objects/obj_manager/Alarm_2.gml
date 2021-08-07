/// @description Gunship Generator

//Set a variable spawn rate that can be increased as time passes.
gunShipSpawnRate = 120;

//Only start spawning Gun Ships once player1score reaches 100
if player1score >= 100
{	
	//Choose the side where the Gun Ship will spawn
	spawnSide = irandom_range(0, 1);

	//Choose random Y position
	var gunY = irandom_range(0, room_height-56);

	if spawnSide = 0
	{
		gunShip = instance_create_layer(-128, gunY, "Instances", obj_gunship)
		//Flip horizontally so gun is facing the right way.
		gunShip.image_xscale = -2;
	}
	else
	{
		gunShip = instance_create_layer(room_width, gunY, "Instances", obj_gunship)
		gunShip.image_xscale = 2;
	}

	gunShip.image_yscale = 2;
}

//Tell Alarm 2 to run again every gunShipSpawnRate frames
alarm[2] = gunShipSpawnRate;