//Fade wifi symbol in
if (image_alpha < 1)
{
	image_alpha += 0.005;
}

//When the tractor beam appears, move the wifi up into it
if (instance_exists(obj_tractorwhite) && image_xscale > 0)
{
	vspeed -= 0.1
	image_xscale -= 0.05;
	image_yscale -= 0.05;
}