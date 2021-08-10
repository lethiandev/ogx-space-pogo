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

// Detect standing on the platform
function movement_get_collider(obj) {
  if (vspeed < 0) {
    return noone;
  }
  
  var vspd = ceil(vspeed) + 1;
  var inst = instance_place(x, y + vspd, obj);
  return inst;
}

/// Move and collide with platforms from top
function movement_move_and_collide(obj) {
  var inst = movement_get_collider(obj);
  
  if (inst != noone) {
    var vspd = ceil(vspeed) + 1;
    movement_move_outside(obj, -1, vspd);
    vspeed = 0;
    return true;
  }
  
  return false;
}
