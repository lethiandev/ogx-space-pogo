function generate_world_tier_2(height, index){
  var platform = generate_world_tier_0(height, index);
  platform.sprite_index = sprPlatformTier2;
  return platform;
}
