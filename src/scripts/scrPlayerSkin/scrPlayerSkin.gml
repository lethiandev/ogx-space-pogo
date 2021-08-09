globalvar player_skin_list, player_skin_queue;

player_skin_list = ds_list_create();
ds_list_add(player_skin_list, sprPlayerA);
ds_list_add(player_skin_list, sprPlayerB);

player_skin_queue = ds_list_create();

function player_skin_queue_empty() {
  return ds_list_empty(player_skin_queue);
}

function player_skin_queue_reset() {
  ds_list_copy(player_skin_queue, player_skin_list);
  ds_list_shuffle(player_skin_queue);
}

function player_skin_queue_pop() {
  if (not player_skin_queue_empty()) {
    var skin = player_skin_queue[| 0];
    ds_list_delete(player_skin_queue, 0);
    return skin;
  }
  return noone;
}

function player_skin_random() {
  if (player_skin_queue_empty()) {
    player_skin_queue_reset();
  }
  
  return player_skin_queue_pop();
}
