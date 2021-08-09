/// @description Pogo movement
var on_floor = false;

if (vspeed >= 0) {
  var vspd = ceil(vspeed) + 1;
  if (place_meeting(x, y + vspd, objPlatform)) {
    movement_move_outside(objPlatform, -1, vspd);
    on_floor = true;
    vspeed = 0;
  }
}

var is_jumping = input_is_jumping(team);
if (is_jumping and on_floor) {
  vspeed = -7;
}
