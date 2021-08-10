/// @description Score Display

//Draw player 2s score at the top left corner of the screen
draw_set_halign(fa_left);
draw_text(10, 10, "Player 2 Score\n" + string(player2score));

//Draw the current Hi-Score at the top center of the screen
draw_set_halign(fa_center);
draw_text(room_width * 0.5, 10,"High Score\n" + string(hiScore));

//Draw player 1s score at the top right corner of the screen
draw_set_halign(fa_right);
draw_text(room_width - 10, 10, "Player 1 Score\n" + string(player1score));
