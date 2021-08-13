/// @description Update body parts position
body_x += body_velocity_x;
body_y += body_velocity_y;

pogo_x += pogo_velocity_x;
pogo_y += pogo_velocity_y;

body_velocity_y += 0.1;
pogo_velocity_y += 0.1;

// Always follow bottom of the screen
var cam = view_get_camera(0);
var camy = camera_get_view_y(cam);
y = room_height + camy;
