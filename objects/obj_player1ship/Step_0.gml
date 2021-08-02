/// @description Basic Controls

//Stop moving if no keys are pressed
hspeed = 0
vspeed = 0

//8-Directional movement

//Horizontal movement
if keyboard_check(vk_left) hspeed = -10
if keyboard_check(vk_right) hspeed = 10

//Vertical movement
if keyboard_check(vk_up) vspeed = -10
if keyboard_check(vk_down) vspeed = 10