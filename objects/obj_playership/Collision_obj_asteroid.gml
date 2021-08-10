//If Asteroid is within certain size range, make player ship invisible and play death animation
if obj_asteroid.id.image_xscale >= 1.5
{
	//Prevent the player from moving the ship
	canMove = false;
	//Make player 1 ship invisible
	visible = false;
	//Tell Alarm 0 (Death Animation) to run
	alarm[0] = 1
}