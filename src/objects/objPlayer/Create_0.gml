/// @description Setup initial variables
randomize();
skin = player_skin_random();
height_last = noone;

crosshair_timer = 0.75;
platform_last = noone;

function crosshair_get_angle() {
  var crossmin = min(0.5, crosshair_timer);
  var crossmax = max(0, crosshair_timer - 0.5);
  var factor = (crossmin - crossmax) * 2;
  return 45 + 90 * factor;
}

// Physics config
gravity = 0.2;
