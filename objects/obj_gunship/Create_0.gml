//Move on-screen based on spawn position
targetX = 0;

if x > 0
{
	targetX = x-128
	move_towards_point(targetX, y, 5);
}
else
{
	targetX = x+256
	move_towards_point(targetX, y, 5);
}