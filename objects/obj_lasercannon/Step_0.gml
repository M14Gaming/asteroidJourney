//Stop movement once Laser Cannon is fully on-screen
if distance_to_point(x, targetY) < 1
{
	speed = 0;
	
	//If the Laser Cannon has been stopped for a second, fire a bullet and move off-screen.
	if stopTime >= room_speed * 4.5
	{	
		//Stop firing
		alarm[0] = -1;
		
		//Move back off-screen and destroy the instance.
		move_towards_point(x, startY, 5);
		if distance_to_point(x, startY) < 1
		{
			instance_destroy();
		}
	}
	else if stopTime >= room_speed * 3
	{
		//Play laser fire sound
		if (!audio_is_playing(snd_laserfireboom))
		{
			audio_play_sound(snd_laserfireboom, 1, false);
			audio_play_sound(snd_laserfirepew, 1, false);
		}
		
		//Tell Alarm 0 to run to fire laser.
		if (alarm[0] = -1)
		{
			alarm[0] = 1;
		}
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