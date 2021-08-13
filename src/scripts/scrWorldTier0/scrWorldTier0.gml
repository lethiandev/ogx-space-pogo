globalvar last_platform;
last_platform = noone;

function generate_world_tier_0(height, index) {
  var tilew = sprite_get_width(sprPlatformMask);
  var platform = create_world_tier_0_platform();
  var size = irandom_range(4, 6);
  var width = size * tilew;
  
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
  
  last_platform = platform;
  return platform;
}

function create_world_tier_0_platform() {
  var inst = instance_create_layer(0, 0, "Platforms", objPlatform);
  inst.sprite_index = sprPlatformTier0;
  return inst;
}
