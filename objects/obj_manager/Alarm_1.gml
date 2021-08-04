/// @description Score updater
//If player ship is still on-screen, increase that players score by 1 every 10 frames
if instance_exists(obj_player1ship)
{
	player1score += 1;
	alarm[1] = 10;
}