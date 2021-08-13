/// @description Update movement
x += move_speed * move_direction;

var is_edge_left = x < 0 and move_direction < 0;
var is_edge_right = x > room_width and move_direction > 0;

if (is_edge_left or is_edge_right) {
  move_direction *= -1;
}
