/// @description Pogo movement
on_platform = movement_get_collider(objPlatform);
on_floor = movement_move_and_collide(objPlatform);

if (on_platform != noone) {
  var spd = on_platform.move_get_speed();
  objCamera.platform_follow(on_platform);
  x += spd;
  
  if (height_last != noone) {
    if (on_platform.y < height_last) {
      objScore.score_add(team, 10);
    }
    height_last = min(height_last, on_platform.y);
  } else {
    height_last = on_platform.y;
  }
}

// Bounce on screen edges
var left_edge = x < 0 and hspeed < 0;
var right_edge = x > room_width and hspeed > 0;
if (left_edge or right_edge) {
  hspeed *= -1;
}

// Jumping
var is_jumping = input_is_jumping(team);
if (is_jumping and on_floor) {
  var angle = crosshair_get_angle();
  hspeed = lengthdir_x(7, angle);
  vspeed = lengthdir_y(7, angle);
}

// Fall off the screen
var cam = view_get_camera(0);
var camy = camera_get_view_y(cam);
if (y > camy + room_height) {
  instance_destroy();
}
