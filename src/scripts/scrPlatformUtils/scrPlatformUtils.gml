function platform_get_edge_x(inst) {
  var tilew = sprite_get_width(sprPlatformMask);
  var width = inst.size * tilew;
  var dist = inst.move_distance;
  var xx = inst.x + width + dist;
  return max(0, xx - room_width);
}

function platform_create(spr) {
  var inst = instance_create_layer(0, 0, "Platforms", objPlatform);
  inst.sprite_index = spr;
  return inst;
}

function platform_create_spikes(platform) {
  var spikes = instance_create_layer(0, 0, "Platforms", objSpikes);
  spikes.x = platform.x + irandom(platform.size - 1) * 18;
  spikes.y = platform.y;
  return spikes
}
