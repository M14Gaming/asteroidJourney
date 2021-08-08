//Stop movement once Gun Ship is fully on-screen
if distance_to_point(targetX, y) < 1
{
	speed = 0;
	
	//If the Gun Ship has been stopped for a second, fire a bullet and move off-screen.
	if stopTime >= 60
	{
		//Fire a bullet
		if startX > 0
		{
			instance_create_layer(x-64, y+38, "Instances", obj_bullet);
		}
		else
		{
			instance_create_layer(x+64, y+38, "Instances", obj_bullet);
		}
		
		//Move back off-screen and destroy the instance.
		move_towards_point(startX, y, 5);
		if distance_to_point(startX, y) < 1
		{
			instance_destroy();
		}
	}
	else
	{
		stopTime++;
	}
}