/// @description 

#macro VIEW view_camera[0]

full_screen = -1

//THIS IS THE REAL ONE!!!!
global.view_width  = 320;
global.view_height = 180;


global.window_scale = 3;


window_set_size(global.view_width*global.window_scale,global.view_height*global.window_scale);
alarm[0]=1;

surface_resize(application_surface, global.view_width * global.window_scale, global.view_height * global.window_scale)


//
view_enabled = true;
view_visible[0] = true;