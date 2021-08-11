//Prevent the player from moving the ship
canMove = false;
//Make player 1 ship invisible
visible = false;
//Shake the screen
screenshake(room_speed*0.5, 3, room_speed*0.75);
//Tell Alarm 0 (Death Animation) to run
alarm[0] = 1