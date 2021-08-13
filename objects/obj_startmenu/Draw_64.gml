/// @description Title Screen Text
draw_set_halign(fa_center);
//Draw title of game
draw_set_font(fnt_arcadeinterlaced);
draw_text_ext_transformed(room_width/2, room_height/4, "ASTEROID\nJOURNEY", 15, 1000, 5, 5, 0);
draw_set_font(fnt_arcadenormal);
draw_text_transformed(room_width/2, room_height/2, "Chase for the Stolen WiFi", 1, 1, 0);

//Draw instructions for play
draw_set_color(c_blue);
draw_text_transformed(room_width/2, room_height * 0.7, "Press 1 for Single-Player Game", 1, 1, 0);
draw_set_color(c_red);
draw_text_transformed(room_width/2, room_height * 0.75, "Press 2 for Multi-Player Game", 1, 1, 0);
draw_set_color(c_white);