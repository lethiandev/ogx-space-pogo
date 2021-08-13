/// @description Draw player sprites
var yy = abs(sin(platform_timer * 0.15)) * 5.0;

draw_sprite(skin, 0, x, y - 4 - yy * 1.2);
draw_sprite(sprPogoStick, 0, x, y - yy);

if (platform_last == noone) {
  return;
}

for (var i = 0; i < 3; i++) {
  var xx, yy, angle;
  angle = crosshair_get_angle();
  xx = lengthdir_x(20 + i * 8, angle);
  yy = lengthdir_y(20 + i * 8, angle);
  draw_sprite(sprCrosshair, 0, x + xx, y + yy);
}
