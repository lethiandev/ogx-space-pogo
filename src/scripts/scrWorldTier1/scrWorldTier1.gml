function generate_world_tier_1(height, index){
  var platform = generate_world_tier_0(height, index);
  platform.sprite_index = sprPlatformTier1;
  return platform;
}
