/// @description Object Generator

//Select a random X and Y position
var _x = irandom_range(20, room_width-20);
var _y = irandom_range(20, room_height-20);

//Create a SmallAsteroid instance
asteroid = instance_create_layer(_x, _y, "Instances", obj_asteroid_s)

asteroid.image_xscale = 0.1;
asteroid.image_yscale = 0.1;

//Tell Alarm 0 to run again after 60 frames
alarm[0] = 60;