function generate_world_tier_3(height, index){
  var platform = noone;
  
  if (irandom(100) < 25) {
    platform = tier_0_create_platform(height, index);
    platform.sprite_index = sprPlatformTier3;
  } else if (irandom(100) < 40) {
    platform = tier_1_create_platform(height, index);
    platform[0].sprite_index = sprPlatformTier3;
    platform[1].sprite_index = sprPlatformTier3;
    if (choose(1, 2) == 1) {
      platform_create_spikes(choose(platform[0], platform[1]));
    } else {
      platform_create_spikes(platform[0]);
      platform_create_spikes(platform[1]);
    }
    platform = choose(platform[0], platform[1]);
  } else {
    platform = tier_3_create_platform(height, index);
    var choosen = choose(platform[0], platform[1]);
    if (choosen.size > 1 and irandom(100) < 70) {
      platform_create_spikes(choosen);
    }
    platform = choose(platform[0], platform[1]);
  }
  
  if (irandom(100) < 50) {
    platform_create_shuriken(platform);
  }
  
  if (irandom(100) < 50) {
    platform_create_shuriken(platform);
  }
  
  last_platform = platform;
}

function tier_3_create_platform(height, index) {
  var platform1, platform2;
  
  platform1 = platform_create(sprPlatformTier3);
  platform1.size = choose(1, 2);
  platform1.move_distance = irandom(room_width / 2 - 2 * 18);
  platform1.x = irandom_range(0, room_width / 2) + room_width / 2;
  platform1.x -= platform_get_edge_x(platform1) + room_width / 2;
  platform1.y = height;
  
  platform2 = platform_create(sprPlatformTier3);
  platform2.size = choose(1, 2);
  platform1.move_distance = irandom(room_width / 2 - 2 * 18);
  platform2.x = irandom_range(room_width / 2, room_width);
  platform2.x -= platform_get_edge_x(platform2);
  platform2.y = height;
  
  return [platform1, platform2];
}
