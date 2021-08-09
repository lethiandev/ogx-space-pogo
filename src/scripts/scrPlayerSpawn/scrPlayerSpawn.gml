globalvar spawn_instance_map;

spawn_instance_map = ds_map_create();

function spawn_has_instance(key) {
  var inst = spawn_instance_map[? key];
  return inst and instance_exists(inst);
}

function spawn_instance(key, layer, obj) {
  if (spawn_has_instance(key)) {
    return spawn_instance_map[? key];
  }
  var inst = instance_create_layer(x, y, layer, obj);
  ds_map_set(spawn_instance_map, key, inst);
  return inst;
}

function spawn_get_instance_array() {
  return ds_map_values_to_array(spawn_instance_map);
}

function spawn_reset() {
  ds_map_clear(spawn_instance_map);
}
