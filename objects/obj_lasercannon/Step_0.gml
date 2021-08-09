//Stop movement once Laser Cannon is fully on-screen
if distance_to_point(x, targetY) < 1
{
	speed = 0;
	
	//If the Laser Cannon has been stopped for a second, fire a bullet and move off-screen.
	if stopTime >= room_speed * 4.5
	{	
		//Move back off-screen and destroy the instance.
		move_towards_point(x, startY, 5);
		if distance_to_point(x, startY) < 1
		{
			instance_destroy();
		}
	}
	else if stopTime >= room_speed * 3
	{
		instance_create_layer(x, y, "Instances", obj_laser);
		image_speed = 60;
		stopTime++;
	}
	else if stopTime >= room_speed * 1.5
	{
		image_speed = 30;
		stopTime++;
	}
	else
	{
		stopTime++;
	}
}