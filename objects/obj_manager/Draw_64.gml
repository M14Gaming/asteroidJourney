/// @description Score Display

//Draw the scores and high score while players are still alive
if (instance_exists(obj_player1ship))
{	
	//Draw the current Hi-Score at the top center of the screen
	draw_set_halign(fa_center);
	draw_text(room_width * 0.5, 10,"High Score\n" + string_repeat("0", 6-string_length(string(global.hiScore))) + string(global.hiScore));

	//Draw player 1s score at the top right corner of the screen
	draw_set_halign(fa_right);
	draw_text(room_width - 10, 10, "Score\n" + string_repeat("0", 6-string_length(string(player1score))) + string(player1score));
}
//If all players have been destroyed, draw the game over text
else
{
	draw_set_halign(fa_center);
	//Draw "GAME OVER" in the center area of the screen
	draw_text_transformed(room_width/2, room_height/3, "GAME OVER", 4, 4, 0);
	
	//If a new high score was set, display it in the game over screen
	if (global.hiScore > prevHi)
	{
		draw_text_transformed(room_width/2, room_height/2, "New High Score!\n" + string(global.hiScore), 1.5, 1.5, 0);
	}
	
	//Tell the player to press spacebar to try again
	draw_text_transformed(room_width/2, room_height * (2/3), "Press Spacebar to Retry", 1.5, 1.5, 0);
	draw_text_transformed(room_width/2, room_height * (3/4), "Press Esc to Return to Menu", 1.5, 1.5, 0);
}