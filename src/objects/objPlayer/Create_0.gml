/// @description Setup initial variables
randomize();
skin = player_skin_random();
height_last = noone;

angle_timer = 0.75;

on_platform = noone;
on_floor = false;

function crosshair_get_angle() {
  var factor = min(0.5, angle_timer) - max(0, angle_timer - 0.5);
  return 45 + 90 * factor * 2;
}

// Physics config
gravity = 0.2;
