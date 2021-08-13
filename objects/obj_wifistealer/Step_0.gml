/// @description Movement
//Move down to pick up wifi
if (y < room_height * 1/3)
{
	vspeed *= 0.95;
}
else
{
	vspeed = 0;
}

//Pick up wifi with tractor beam
if (vspeed < 1 && !instance_exists(obj_tractormain))
{
	instance_create_depth(x, y+20, 9, obj_tractormain);
}

//Once wifi has been obtained, fly away and load the main game
if (obj_wifi.image_xscale <= 0 && obj_tractormain.image_xscale <= 0)
{
	image_xscale *= 0.9;
	image_yscale *= 0.9;
}

if (image_yscale <= 0)
{
	room_goto_next();
}