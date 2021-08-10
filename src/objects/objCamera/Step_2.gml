/// @description Follow players
var cam = view_get_camera(0);
var offset = room_height / 2;
var target = min(height_current, room_height / 2) - offset;
var cy = camera_get_view_y(cam);
var yy = lerp(cy, target, 0.1);

camera_set_view_pos(cam, 0, yy);
