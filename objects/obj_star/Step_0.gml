/// @description Despawn
//Destroy instance once it leaves boundaires of room
if (x > room_width || y > room_width || x < 0 || y < 0)
{
	instance_destroy();
}