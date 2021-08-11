/// @description Score Display

//Draw the scores and high score while players are still alive
if (instance_exists(obj_playership))
{	
	//Draw player 2s score at the top left corner of the screen
	draw_set_halign(fa_left);
	draw_text(10, 10, "Player 2 Score\n" + string(player2score));

	//Draw the current Hi-Score at the top center of the screen
	draw_set_halign(fa_center);
	draw_text(room_width * 0.5, 10,"High Score\n" + string(hiScore));

	//Draw player 1s score at the top right corner of the screen
	draw_set_halign(fa_right);
	draw_text(room_width - 10, 10, "Player 1 Score\n" + string(player1score));
}
//If all players have been destroyed, draw the game over text
else
{
	draw_set_halign(fa_center);
	//Draw "GAME OVER" in the center area of the screen
	draw_text_transformed(room_width/2, room_height/3, "GAME OVER", 5, 5, 0);
	
	//If a new high score was set, display it in the game over screen
	if (hiScore > prevHi)
	{
		draw_text_transformed(room_width/2, room_height/2, "New High Score!\n" + string(hiScore), 2, 2, 0);
	}
	
	//Tell the player to press spacebar to try again
	draw_text_transformed(room_width/2, room_height * (2/3), "Press Spacebar to Retry", 2, 2, 0);
}