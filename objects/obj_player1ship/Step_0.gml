//Basic Controls
//Reset rotation and speed when no keys are pressed
if(!keyboard_check(vk_left) && !keyboard_check(vk_right))
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
if(!keyboard_check(vk_up) && !keyboard_check(vk_down))
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
if (x > room_width-64)
{
	x = room_width-64;
	hspeed = 0;
}
if (x < 64)
{
	x = 64;
	hspeed = 0;
}
if (y > room_height-26)
{
	y = room_height-26;
	vspeed = 0;
}
if (y < 26)
{
	y = 26;
	vspeed = 0;
}

//8-Directional movement

//Horizontal movement
if (canMove)
{
	//Horizontal movement and tilting
	if keyboard_check(vk_left)
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
	
	if keyboard_check(vk_right)
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
	if keyboard_check(vk_up)
	{
		if (vspeed > -7)
		{
			vspeed -= 0.5;
		}
	}
	if keyboard_check(vk_down)
	{
		if (vspeed < 7)
		{
			vspeed += 0.5;
		}
	}
}

//Handle Collisions
if (place_meeting(x + 1, y, obj_player2ship)) || (place_meeting(x - 1, y, obj_player2ship))
{
	if (obj_player2ship.hspeed = 0)
	{
		obj_player2ship.hspeed = hspeed;
	}
	else
	{
		obj_player2ship.hspeed = obj_player2ship.hspeed * -1;
	}
	if (hspeed = 0)
	{
		hspeed = -obj_player2ship.hspeed;
	}
	else
	{
		hspeed = hspeed * -1;
	}
}
if (place_meeting(x, y + 1, obj_player2ship)) || (place_meeting(x, y - 1, obj_player2ship))
{
	if (obj_player2ship.vspeed = 0)
	{
		obj_player2ship.vspeed = vspeed;
	}
	else
	{
		obj_player2ship.vspeed = obj_player2ship.vspeed * -1;
	}
	if (vspeed = 0)
	{
		vspeed = -obj_player2ship.vspeed;
	}
    else
	{
		vspeed = vspeed * -1;
	}
}