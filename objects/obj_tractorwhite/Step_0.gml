//Decrease size and alpha to give feeling of the tractor beam pulling in objects
if (image_yscale > 0)
{
	image_yscale -= 0.05;
}
if (image_xscale > 0)
{
	image_xscale -= 0.05;
}
if (image_alpha > 0)
{
	image_alpha -= 0.01;
}
if (image_alpha <= 0)
{
	instance_destroy();
}