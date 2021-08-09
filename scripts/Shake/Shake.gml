/// @function                   screenshake(time, magnitude, fade);
/// @param  {real}  time       The length of time - in steps - to shake the screen
/// @param  {real}  magnitude  The amount of screenshake to apply
/// @param  {real}  fade       How quickly the screenshake effect will fade out
/// @description    Set the screenshake object variables.

function screenshake(time, magnitude, fade)
{
	with (obj_manager)
	{
		shake = true;
		shake_time = time;
		shake_magnitude = magnitude;
		shake_fade = fade;
	}
}