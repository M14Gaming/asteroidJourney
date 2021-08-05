//Increase size of asteroid over time to give feeling of flying past it
image_xscale = image_xscale * 1.03;
image_yscale = image_yscale * 1.03;

//Move the asteroid based on it's position and distance from the center of the screen
if hspeed = 0 && vspeed = 0
{
	centerDirection = point_direction(x,y,540,360);
	outDirection = centerDirection+180;
	centerDistance = distance_to_point(540,360);
	outSpeed = centerDistance/150;
	motion_set(outDirection,outSpeed);
}

//Once the asteroid reaches a certain size, destroy it.
if image_xscale >= 2
{
	instance_destroy();
}