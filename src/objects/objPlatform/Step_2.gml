/// @description Destroy offscreen
var cam = view_get_camera(0);
var camy = camera_get_view_y(cam);
var camh = camera_get_view_height(cam);

if (y > camy + camh) {
  instance_destroy(self.id);
}
