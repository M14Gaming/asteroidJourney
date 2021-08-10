//Basic Controls
//Stop moving if no keys are pressed
hspeed = 0;
vspeed = 0;

//8-Directional movement

//Horizontal movement
if (canMove)
{
	//Horizontal movement
	if keyboard_check(ord("A")) hspeed = -7;
	if keyboard_check(ord("D")) hspeed = 7;

	//Vertical movement
	if keyboard_check(ord("W")) vspeed = -7;
	if keyboard_check(ord("S")) vspeed = 7;
}