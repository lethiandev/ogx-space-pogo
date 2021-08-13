function generate_world_tier_2(height, index){
  if (irandom(100) < 40) {
    var platform = noone;
    if(irandom(100) < 40) {
      platform = tier_0_create_platform(height, index);
      platform.sprite_index = sprPlatformTier2;
    } else {
      platform = tier_1_create_platform(height, index);
      platform[0].sprite_index = sprPlatformTier2;
      platform[1].sprite_index = sprPlatformTier2;
      platform = choose(platform[0], platform[1]);
    }
    if (index >= 0) {
      repeat(choose(1, 2)) {
        platform_create_spikes(platform);
      }
    }
    last_platform = platform;
    return;
  }
  
  last_platform = tier_2_create_platform(height, index);
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
