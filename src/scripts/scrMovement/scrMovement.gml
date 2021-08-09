// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movement_move_outside(obj, ymin = 0, ymax = 10) {
  for (var i = ymin; i <= ymax; i++) {
    var yy = floor(y) + i;
    if (place_meeting(x, yy, obj)) {
      y = yy - 1;
      break;
    }
  }
}
