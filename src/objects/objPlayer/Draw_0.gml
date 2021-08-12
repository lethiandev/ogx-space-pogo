/// @description Draw player sprites
draw_sprite(skin, 0, x, y - 4);
draw_self();

for (var i = 0; i < 3; i++) {
  var xx, yy, angle;
  angle = crosshair_get_angle();
  xx = lengthdir_x(18 + i * 8, angle);
  yy = lengthdir_y(18 + i * 8, angle);
  draw_sprite(sprCrosshair, 0, x + xx, y + yy);
}
