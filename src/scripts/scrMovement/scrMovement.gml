/// Move outside of the object on collision
function movement_move_outside(obj, ymin = 0, ymax = 10) {
  for (var i = ymin; i <= ymax; i++) {
    var yy = floor(y) + i;
    if (place_meeting(x, yy, obj)) {
      y = yy - 1;
      break;
    }
  }
}

/// Move and collide with platforms from top
function movement_move_and_collide(obj) {
  if (vspeed < 0) {
    return false;
  }
  
  var vspd = ceil(vspeed) + 1;
  if (place_meeting(x, y + vspd, obj)) {
    movement_move_outside(obj, -1, vspd);
    vspeed = 0;
    return true;
  }
  
  return false;
}
