/// @description Pogo movement
var on_floor, platform;

// Update movement
platform = movement_get_collider(objPlatform);
on_floor = movement_move_and_collide(objPlatform);

if (platform != noone) {
  var spd = platform.move_get_speed();
  objCamera.platform_follow(platform);
  x += spd;
}

// Jumping
var is_jumping = input_is_jumping(team);
if (is_jumping and on_floor) {
  vspeed = -7;
}
