/// @description Score updater
//If a player ship is still on-screen, increase that players score by 1 every 10 frames
if (instance_exists(obj_playership))
{
	if (instance_exists(obj_player1ship) && obj_player1ship.visible = true)
	{
		player1score += 1;
	}
	if (instance_exists(obj_player2ship) && obj_player2ship.visible = true)
	{
		player2score += 1;
	}
	
	alarm[1] = 10;
}

else if (player1score > hiScore || player2score > hiScore)
{
	hiScore = max(player1score, player2score);
}
