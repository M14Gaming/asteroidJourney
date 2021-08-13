/// @description Menu Control
if (keyboard_check(ord("1")))
{
	room_goto_next();
}
if (keyboard_check(ord("2")))
{
	global.twoPlayers = true;
	room_goto_next();
}

//Generate stars to give title screen some movement
starSpawnX = irandom_range(10, room_width - 10);
starSpawnY = irandom_range(10, room_width - 10);
if (instance_number(obj_star) < 20)
{
	instance_create_layer(starSpawnX, starSpawnY, "Instances", obj_star);
}