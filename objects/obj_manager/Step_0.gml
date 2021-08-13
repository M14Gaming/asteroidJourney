//Screen Shake Properties
if (shake) 
{
	//Decrease the shake timer
	shake_time -= 1;
	
	//Choose directions that the room will shake
	var _xval = choose(-shake_magnitude, shake_magnitude); 
	var _yval = choose(-shake_magnitude, shake_magnitude); 
   
	//Move the camera to create the shake effect
	camera_set_view_pos(view_camera[0], _xval, _yval); 

	//Stop the shaking once shake_time reaches 0
	if (shake_time <= 0) 
	{ 
		shake_magnitude -= shake_fade; 

		if (shake_magnitude <= 0) 
		{ 
			camera_set_view_pos(view_camera[0], 0, 0); 
			shake = false; 
		} 
	} 
}

//If all ships are destroyed, the player can press the spacebar to restart the main game
if(!instance_exists(obj_player1ship))
{
	if (keyboard_check(vk_space))
	{
		room_restart();
	}
	if (keyboard_check(vk_escape))
	{
		room_goto_previous();
	}
}


//Generate stars at random points throughout the game
starSpawnX = irandom_range(10, room_width - 10);
starSpawnY = irandom_range(10, room_width - 10);
if (instance_number(obj_star) < 20)
{
	instance_create_layer(starSpawnX, starSpawnY, "Instances", obj_star);
}

//Respawn player2ship if it's destroyed
if (!instance_exists(obj_player2ship) && global.twoPlayers)
{
	instance_create_layer(room_width * 0.5, room_height * 0.5, "Instances", obj_player2ship);
}