/// @description Resize object
if (obj_wifi.image_xscale > 0)
{
	if (image_yscale < 3)
	{
		image_yscale += 0.2;
	}
	if (image_yscale >= 2 && image_xscale < 2)
	{
		image_xscale += 0.2;
	}
}
else if (!instance_exists(obj_tractorwhite))
{
	if (image_xscale > 0)
	{
		image_xscale -= 0.2;
	}
	else
	{
		instance_destroy();
	}
}

if (image_xscale >= 2 && !instance_exists(obj_tractorwhite) && obj_wifi.image_xscale > 0)
{
	instance_create_depth(x, y, 9, obj_tractorwhite);
}

