//Move the Gun-Ship back off-screen and destroy the instance
move_towards_point(startX, y, 5);

if distance_to_point(startX, y) < 1
{
	instance_destroy();
}
else
{
	alarm[0] = 1;
}