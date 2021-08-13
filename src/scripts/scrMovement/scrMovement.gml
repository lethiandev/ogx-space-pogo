/// Move outside of the object on collision
function movement_move_outside(obj) {
  var yy = ceil(vspeed) + 1;
  
  for (var i = -1; i < yy; i++) {
    var off = ceil(y) + i;
    if (place_meeting(x, off, obj)) {
      y = off - 1;
      return;
    }
  }
}

// Detect standing on the platform
function movement_get_collider(obj) {
  if (vspeed < 0) {
    return noone;
  }
  
  var xx = x + ceil(hspeed);
  var yy = y + ceil(vspeed);
  var inst = instance_place(xx, yy, obj);
  return inst;
}

/// Move and collide with platforms from top
function movement_move_and_collide(obj) {
  var inst = movement_get_collider(obj);  
  if (inst != noone) {
    movement_move_outside(obj);
    hspeed = 0;
    vspeed = 0;
    return true;
  }
  
  return false;
}
