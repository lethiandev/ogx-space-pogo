/// @description Update crosshair
crosshair_timer += 0.01;
if (crosshair_timer >= 1) {
  crosshair_timer -= 1;
}

platform_timer += 1;
if (platform_last == noone) {
  platform_timer = 0;
}
