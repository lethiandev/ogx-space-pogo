/// @description Pogo movement
if(vspeed > 0) {
  var inst = instance_place(x + hspeed, y + vspeed, objSpikes)
  if (inst != noone and inst.y > y + 12) {
    instance_destroy();
    return;
  }
}

if (instance_exists(platform_last)) {
  var yy = platform_last.y;
  var xspeed = platform_last.move_get_speed();
  
  x = x + xspeed;
  y = yy - 12;
  hspeed = 0;
  vspeed = 0;
  
  if (input_is_jumping(team)) {
    var angle = crosshair_get_angle();
    hspeed = lengthdir_x(7, angle);
    vspeed = lengthdir_y(7, angle);
    platform_last = noone;
  }
} else if (vspeed >= 0) {
  var xx = x + round(hspeed);
  var yy = y + ceil(vspeed);
  
  var platform = instance_place(xx, yy, objPlatform);
  if (platform != noone) {
    objCamera.platform_follow(platform);
    platform_last = platform;
  }
  
  if (platform != noone) {
    if (height_last > platform.y) {
      objBackground.background_update_tier(platform.sprite_index);
      objScore.score_add(team, 10);
    }
    if (height_last == noone) {
      height_last = room_height;
    }
    height_last = min(height_last, platform.y);
  }
}

// Bounce on screen edges
var is_bounce_left = x < 0 and hspeed < 0;
var is_bounce_right = x > room_width and hspeed > 0;

if (is_bounce_left or is_bounce_right) {
  hspeed *= -1;
}

// Destroy falling player
var cam = view_get_camera(0);
var camy = camera_get_view_y(cam);

if (y > camy + room_height) {
  instance_destroy();
}
