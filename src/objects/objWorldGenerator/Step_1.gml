/// @description Generate world
var cam = view_get_camera(0);
var camy = camera_get_view_y(cam);
var offy = room_height + abs(camy);

while (tier_current_height < offy) {
  tier_current_height += tier_increment;
  var tier_script = tier_get_generator();
  var platform_yy = room_height - tier_current_height;
  
  tier_index += 1;
  if (tier_script != tier_last_script) {
    tier_last_script = tier_script;
    tier_index = 0;
  }
  
  script_execute(tier_script, platform_yy, tier_index);
}
