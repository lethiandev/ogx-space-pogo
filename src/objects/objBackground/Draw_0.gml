/// @description Draw background
var cam = view_get_camera(0);
var camy = camera_get_view_y(cam);

draw_surface(background_current_surface, 0, camy);
if (background_next != noone) {
  draw_set_alpha(timer);
  draw_surface(background_next_surface, 0, camy);
  draw_set_alpha(1);
}
