/// @description Prepare collision mask
image_xscale = size;

if (y < 300) {
  sprite_index = sprPlatformTier1;
}

if (y < 0) {
  sprite_index = sprPlatformTier2;
}

if (y < -300) {
  sprite_index = sprPlatformTier3;
}

function move_get_speed() {
  if (move_distance <= 0) {
    return 0;
  }
  
  var neg = move_offset >= move_distance;
  return move_speed * (neg ? -1 : 1);
}
