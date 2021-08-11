//If Asteroid is within certain size range, make player ship invisible and play death animation
astCollision = instance_place(x, y, obj_asteroid);

if astCollision != noone && astCollision.image_xscale >= 1.5
{
	//Prevent the player from moving the ship
	canMove = false;
	//Make player  ship invisible
	visible = false;
	//Shake the screen
	screenshake(room_speed * 2, 2, room_speed*0.75);
	//Tell Alarm 0 (Death Animation) to run
	alarm[0] = 1
}