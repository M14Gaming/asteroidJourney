//Set size of object
image_xscale = 2;
image_yscale = 2;

//Move across the screen
if x < room_width/2
{
	hspeed = 5;
}
else
{
	hspeed = -5;
}

//Play beam fire sound
audio_play_sound(snd_beamshoot, 1, false);