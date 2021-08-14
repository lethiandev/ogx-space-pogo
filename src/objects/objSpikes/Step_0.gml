/// @description Insert description here
var platform = instance_place(x, y + 5, objPlatform);
if (platform != noone) {
  var xspeed = platform.move_get_speed();
  x += xspeed;
}

// Destroy offscreen
var cam = view_get_camera(0);
var camy = camera_get_view_y(cam);

if (y - 18 > camy + room_height) {
  instance_destroy();
}
