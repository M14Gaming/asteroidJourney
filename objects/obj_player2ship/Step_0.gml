//Basic Controls
//Reset rotation and speed when no keys are pressed
if(!keyboard_check(ord("A")) && !keyboard_check(ord("D")))
{
	if (image_angle != 0)
	{
		image_angle = image_angle * 0.5;
	}
	if (hspeed > 0)
	{
		hspeed -= 0.5;
	}
	if (hspeed < 0)
	{
		hspeed += 0.5;
	}
}
if(!keyboard_check(ord("W")) && !keyboard_check(ord("S")))
{
	if (vspeed > 0)
	{
		vspeed -= 0.5;
	}
	if (vspeed < 0)
	{
		vspeed += 0.5;
	}
}

//Prevent players from moving outside the room
if (x > room_width-44)
{
	x = room_width-44;
	hspeed = 0;
}
if (x < 44)
{
	x = 44;
	hspeed = 0;
}
if (y > room_height-34)
{
	y = room_height-34;
	vspeed = 0;
}
if (y < 34)
{
	y = 34;
	vspeed = 0;
}

//8-Directional movement

//Horizontal movement
if (canMove)
{
	//Horizontal movement and tilting
	if keyboard_check(ord("A"))
	{
		if (image_angle < 32)
		{
			image_angle += 4;
		}
		if (hspeed > -7)
		{
			hspeed -= 0.5;
		}
	}
	
	if keyboard_check(ord("D"))
	{
		if (image_angle > -32)
		{
			image_angle -= 4;
		}
		if (hspeed < 7)
		{
			hspeed += 0.5;
		}
	}

	//Vertical movement
	if keyboard_check(ord("W"))
	{
		if (vspeed > -7)
		{
			vspeed -= 0.5;
		}
	}
	if keyboard_check(ord("S"))
	{
		if (vspeed < 7)
		{
			vspeed += 0.5;
		}
	}
}