/// @description Score updater
//If a player ship is still on-screen, increase that players score
if (instance_exists(obj_player1ship))
{
	if (instance_exists(obj_player1ship) && obj_player1ship.visible = true)
	{
		player1score += 1;
	}
	
	//If in 2 player mode, increase score faster
	if(global.twoPlayers)
	{
		alarm[1] = 5;
	}
	else
	{
		alarm[1] = 10;
	}
}

else if (player1score > global.hiScore)
{
	global.hiScore = player1score;
}
