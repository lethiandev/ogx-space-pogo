/// @description Update platform movement
image_xscale = size;

if (move_distance <= 0) {
  return;
}

move_offset += move_speed;
if (move_offset > move_distance * 2) {
  move_offset = 0;
}

var spd = move_get_speed();
x += spd;
