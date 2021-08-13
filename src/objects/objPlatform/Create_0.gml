/// @description Prepare collision mask
function move_get_speed() {
  if (move_distance <= 0) {
    return 0;
  }
  
  var neg = move_offset >= move_distance;
  return move_speed * (neg ? -1 : 1);
}
