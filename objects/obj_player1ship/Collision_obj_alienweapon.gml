//Prevent the player from moving the ship
canMove = false;
hspeed = 0;
vspeed = 0;
//Make player 1 ship invisible
visible = false;
//Shake the screen
screenshake(room_speed*0.5, 3, room_speed*0.75);
//Play the player death sound
if (!audio_is_playing(snd_playerdeath))
{
	audio_play_sound(snd_playerdeath, 1, false);
}
//Tell Alarm 0 (Death Animation) to run
alarm[0] = 1