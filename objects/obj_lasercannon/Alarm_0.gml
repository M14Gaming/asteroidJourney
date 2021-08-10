/// @description Laser Fire

//Fire a laser
instance_create_layer(x, y, "Instances", obj_laser);

//Run Alarm 0 again every 7 frames
alarm[0] = 7;