function platform_get_edge_x(inst) {
  var tilew = sprite_get_width(sprPlatformMask);
  var width = inst.size * tilew;
  var dist = inst.move_distance;
  var xx = inst.x + width + dist;
  return max(0, xx - room_width);
}
