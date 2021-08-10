/// @description Prepare camera settings
height_last = room_height;
height_current = room_height;

function platform_follow(inst) {
  var height = inst.y;
  height_last = height_current;
  height_current = min(height_current, height);
}
