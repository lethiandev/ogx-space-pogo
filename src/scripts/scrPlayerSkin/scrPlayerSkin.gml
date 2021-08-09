globalvar player_skin_list;

player_skin_list = ds_list_create();
ds_list_add(player_skin_list, sprPlayerA);
ds_list_add(player_skin_list, sprPlayerB);

function player_skin_random() {
  var len = ds_list_size(player_skin_list);
  var idx = irandom_range(0, len - 1);
  return player_skin_list[| idx];
}

function player_skin_is_used(skin) {
  var len = instance_number(objPlayer);
  for (var i = 0; i < len; i++) {
    var player = instance_find(objPlayer, i);
    if (not variable_instance_exists(player, "skin")) {
      continue;
    }
    if (player.skin == skin) {
      return true;
    }
  }
  return false;
}

function player_skin_random_uniq() {
  do var uniq_skin = player_skin_random();
  until (not player_skin_is_used(uniq_skin));
  return uniq_skin;
}
