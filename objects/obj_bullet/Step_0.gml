/// @description Despawn

//Destroy bullets once they move off-screen
if (x >= room_width+60 || x <= -60)
{
	instance_destroy();
}