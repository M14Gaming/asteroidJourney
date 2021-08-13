/// @description Rest of scene
if (obj_wifi.image_alpha >= 1 && !instance_exists(obj_wifistealer))
{
	instance_create_depth(room_width * 0.5, -50, 8, obj_wifistealer);
}

//Let player skip by pressing space
if(keyboard_check(vk_space))
{
	room_goto_next();
}