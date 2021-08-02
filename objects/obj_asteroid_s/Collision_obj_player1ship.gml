//If Asteroid is within certain size range, destroy player1ship
if image_xscale >= 2 && image_xscale <= 2.5
{
	instance_destroy(obj_player1ship);
}