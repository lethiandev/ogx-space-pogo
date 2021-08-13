/// @description Prepare world tiers
tier_map = ds_map_create();
ds_map_set(tier_map, 0, generate_world_tier_0);
ds_map_set(tier_map, 1, generate_world_tier_1);
ds_map_set(tier_map, 2, generate_world_tier_2);
ds_map_set(tier_map, 3, generate_world_tier_3);

tier_increment = 16 * 6;
tier_elevation = tier_increment * 14;

tier_current_height = 48;
tier_last_script = noone;
tier_index = 0;

function tier_get_generator() {
  var yy = floor(tier_current_height / tier_elevation);
  var myy = ds_map_size(tier_map);
  var idx = min(myy - 1, yy);
  return tier_map[? idx];
}
