/// @description Object Generator

//Select a random X and Y position
var _x = irandom_range(300, room_width-300);
var _y = irandom_range(200, room_height-200);

//Create a SmallAsteroid instance
asteroid = instance_create_layer(_x, _y, "Instances", obj_asteroid_s);

asteroid.image_xscale = 0.1;
asteroid.image_yscale = 0.1;

//Tell Alarm 0 to run again after 60 frames
alarm[0] = 60;