/// @description Screen Shake Properties
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