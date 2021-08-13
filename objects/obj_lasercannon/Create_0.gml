//Move on-screen
startY = y;
targetY = y+95;

move_towards_point(x, targetY, 5);

//Play laser charge sound
audio_play_sound(snd_lasercharge, 1, false);

//Keep track of how long the Gun Ship has been stopped
stopTime = 0;