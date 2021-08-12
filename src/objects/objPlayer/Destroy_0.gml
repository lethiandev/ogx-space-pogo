/// @description Insert description here
objGameState.player_has_died();

// Create destroy effect
var cam = view_get_camera(0);
var camy = camera_get_view_y(cam);
var yy = camy + room_height;

var inst = instance_create_layer(x, yy, "Players", objPlayerMarian);
inst.body_sprite = skin;
