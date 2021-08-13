function generate_world_tier_1(height, index){
  var platform = noone;
  
  if (irandom(100) < 50) {
    platform = tier_0_create_platform(height, index);
    platform.sprite_index = sprPlatformTier1;
  } else {
    platform = tier_1_create_platform(height, index);
    platform = choose(platform[0], platform[1]);
  }
  
  if (irandom(100) < 30) {
    platform_create_spikes(platform);
  }
  
  if (irandom(100) < 70 or (irandom(100) < 50 and index > 6)) {
    platform_create_shuriken(platform);
  }
  
  last_platform = platform;
}

function tier_1_create_platform(height, index) {
  var platform1, platform2;
  
  platform1 = platform_create(sprPlatformTier1);
  platform1.size = irandom_range(2, 4);
  platform1.x = irandom_range(0, (room_width / 2) - platform1.size * 18);
  platform1.y = height;
  
  platform1.move_distance = choose(0, 64);
  platform1.move_offset = platform1.move_distance;
  platform1.x = max(platform1.move_distance, platform1.x);
  
  platform2 = platform_create(sprPlatformTier1);
  platform2.size = irandom_range(2, 4);
  platform2.x = irandom_range(room_width / 2, room_width - platform2.size * 18);
  platform2.y = height;
  
  platform2.move_distance = choose(0, 64);
  platform2.x -= platform_get_edge_x(platform2);
  
  return [platform1, platform2];
}
