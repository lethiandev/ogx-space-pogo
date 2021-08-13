function generate_world_tier_3(height, index){
  var platform = generate_world_tier_0(height, index);
  platform.sprite_index = sprPlatformTier3;
  return platform;
}
