/// @description Insert description here
var platform = instance_place(x, y + 5, objPlatform);
if (platform != noone) {
  var xspeed = platform.move_get_speed();
  x += xspeed;
}
