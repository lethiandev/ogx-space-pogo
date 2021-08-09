/// @description Pogo movement
var on_floor;

// Update movement
on_floor = movement_move_and_collide(objPlatform);

// Jumping
var is_jumping = input_is_jumping(team);
if (is_jumping and on_floor) {
  vspeed = -7;
}
