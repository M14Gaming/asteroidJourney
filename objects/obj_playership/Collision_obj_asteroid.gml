//If Asteroid is within certain size range, make player ship invisible and play death animation
astCollision = instance_place(x, y, obj_asteroid);

if (astCollision != noone && astCollision.image_xscale >= 1.5)
{
	//Play the player death sound
	if (!audio_is_playing(snd_playerdeath))
	{
		audio_play_sound(snd_playerdeath, 1, false);
	}
	//Prevent the player from moving the ship
	canMove = false;
	hspeed = 0;
	vspeed = 0;
	//Make player ship invisible
	visible = false;
	//Shake the screen
	screenshake(room_speed * 2, 2, room_speed*0.75);
	//Tell Alarm 0 (Death Animation) to run
	alarm[0] = 1
}