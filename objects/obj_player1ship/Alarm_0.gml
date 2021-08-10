/// @description Death Animation Manager

//Create explosions at random points where the ship was destroyed
explosionX = irandom_range(x-32, x+32);
explosionY = irandom_range(y-13, y+13);

instance_create_layer(explosionX, explosionY, "Instances", obj_player1explosion);

//If player1ship is no longer visible, destroy the instance after some time
if (deathTime >= room_speed * 0.5)
{
	instance_destroy();
	alarm[0] = -1;
}
else
{
	deathTime++;
}

alarm[0] = 5;