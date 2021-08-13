globalvar last_platform;
last_platform = noone;

function generate_world_tier_0(height, index) {
  last_platform = tier_0_create_platform(height, index);
  
  if (index > 4 and irandom(100) < 30) {
    platform_create_shuriken(last_platform);
  }
}

function tier_0_create_platform(height, index) {
  var platform = platform_create(sprPlatformTier0);
  var size = irandom_range(4, 6);
  
  var orient_x = room_width / 2;
  if (instance_exists(last_platform)) {
    orient_x = last_platform.x;
  }
  
  platform.size = size;
  platform.move_distance = 0;
  platform.x = orient_x + irandom_range(-150, 150);
  platform.y = height;
  
  if (index > 1) {
    var dist = choose(0, 0, 64, 128);
    platform.move_distance = dist;
  }

  // Fix platform max x
  var xx = platform_get_edge_x(platform);
  platform.x = max(0, platform.x - xx);
  
  return platform;
}
