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
    hspeed = lengthdir_x(7.2, angle);
    vspeed = lengthdir_y(7.2, angle);
    platform_last = noone;
    var snd = audio_play_sound(sndJump, 0, false);
    audio_sound_pitch(snd, 1.0 - random(0.15));
  }
} else if (vspeed >= 0) {
  var xx = x + round(hspeed);
  var yy = y + ceil(vspeed);
  
  var platform = instance_place(xx, yy, objPlatform);
  if (platform != noone and platform.y < y + 8) {
    platform = noone;
  }
  
  if (platform != noone) {
    objCamera.platform_follow(platform);
    platform_last = platform;
    var snd = audio_play_sound(sndPlatform, 0, false);
    audio_sound_pitch(snd, 1.0 - random(0.15));
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
  var snd = audio_play_sound(sndPlatform, 0, false);
  audio_sound_pitch(snd, 1.0 - random(0.15));
  hspeed *= -1;
}

// Destroy falling player
var cam = view_get_camera(0);
var camy = camera_get_view_y(cam);

if (y > camy + room_height) {
  instance_destroy();
}
