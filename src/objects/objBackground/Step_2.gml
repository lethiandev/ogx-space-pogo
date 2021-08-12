/// @description Switch background surfaces
if (background_next != noone) {
  if (timer == 0) {
    background_update(background_next_surface, background_next);
  }
  
  timer = min(1, timer + 0.05);
  
  if (timer == 1) {
    swap_surfaces();
    background_current = background_next;
    background_next = noone;
    timer = 0;
  }
}
