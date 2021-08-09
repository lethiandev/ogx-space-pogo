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

var has_input_jump = keyboard_check_pressed(vk_space);
if (has_input_jump and on_floor) {
  vspeed = -7;
}
