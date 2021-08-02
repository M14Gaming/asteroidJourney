//Increase size of asteroid over time to give feeling of flying past it
image_xscale = image_xscale * 1.01
image_yscale = image_yscale * 1.01

if image_xscale >= 4
{
	instance_destroy()
}