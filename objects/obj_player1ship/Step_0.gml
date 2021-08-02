/// @description Basic Controls

//Stop moving if no keys are pressed
hspeed = 0;
vspeed = 0;

//8-Directional movement

//Horizontal movement
if keyboard_check(vk_left) hspeed = -7;
if keyboard_check(vk_right) hspeed = 7;

//Vertical movement
if keyboard_check(vk_up) vspeed = -7;
if keyboard_check(vk_down) vspeed = 7;