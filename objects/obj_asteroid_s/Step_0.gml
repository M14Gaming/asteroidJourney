//Increase size of asteroid over time to give feeling of flying past it
image_xscale = image_xscale * 1.03;
image_yscale = image_yscale * 1.03;

if hspeed = 0 && vspeed = 0
{
	centerDirection = point_direction(x,y,540,360);
	outDirection = centerDirection+180;
	centerDistance = distance_to_point(540,360);
	outSpeed = centerDistance/100;
	motion_set(outDirection,outSpeed);
}

if image_xscale >= 4
{
	instance_destroy();
}