/// @description Menu Control
if (keyboard_check(ord("1")) || keyboard_check(ord("2")))
{
	//Play the intro cutscene
	instance_create_layer(0,0,"Instances", obj_introscene);
	if (keyboard_check(ord("2")))
	{
		global.twoPlayers = true;
	}
}
//Generate stars to give title screen some movement
starSpawnX = irandom_range(10, room_width - 10);
starSpawnY = irandom_range(10, room_width - 10);
if (instance_number(obj_star) < 20)
{
	instance_create_layer(starSpawnX, starSpawnY, "Instances", obj_star);
}