//Move on-screen based on spawn position
startX = x;
targetX = 0;
//Keep track of how long the Gun Ship has been stopped
stopTime = 0;

//Set speeds for each side, since origin of object is top left.
if startX > 0
{
	targetX = x-192
	move_towards_point(targetX, y, 5);
}
else
{
	targetX = x+192
	move_towards_point(targetX, y, 5);
}