function generate_world_tier_2(height, index){
  var platform = noone;
  
  if (irandom(100) < 30) {
    platform = tier_0_create_platform(height, index);
    platform.sprite_index = sprPlatformTier2;
  } else if (irandom(100) < 30) {
    platform = tier_1_create_platform(height, index);
    platform[0].sprite_index = sprPlatformTier2;
    platform[1].sprite_index = sprPlatformTier2;
    platform = choose(platform[0], platform[1]);
  } else {
    platform = tier_2_create_platform(height, index);
  }
  
  if (irandom(100) < 50) {
    platform_create_shuriken(platform);
  }
  
  if (irandom(100) < 30) {
    platform_create_shuriken(platform);
  }
  
  last_platform = platform;
}

function tier_2_create_platform(height, index) {
  var platform;
  platform = platform_create(sprPlatformTier2);
  platform.size = irandom_range(1, 3);
  
  var hplat = platform.size * 18 / 2
  platform.x = irandom_range(room_width / 2 - hplat - 96, room_width / 2 - hplat + 96);
  platform.y = height;
  platform.move_distance = 0;
  
  return platform;
}
