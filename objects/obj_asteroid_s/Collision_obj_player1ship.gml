//If Asteroid is within certain size range, destroy player1ship upon collision
if image_xscale >= 1.5
{
	instance_destroy(obj_player1ship);
}