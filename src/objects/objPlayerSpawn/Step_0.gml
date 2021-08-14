/// @description Control spawn feature
function reorder_instances() {
  var players = spawn_get_instance_array();
  var len = array_length(players);
  for (var i = 0; i < len; i++) {
    var xx = -len * 12 + i * 24;
    var inst = players[i];
    inst.x = room_width / 2 + xx;
  }
}

for (var i = 0; i < 2; i++) {
  var has_instance = spawn_has_instance(i);
  var is_jumping = input_is_jumping(i);
  if (has_instance and is_jumping) {
    instance_destroy(self.id);
  } else if (is_jumping) {
    var inst = spawn_instance(i, "Players", objPlayer);
    reorder_instances();
    inst.skin = player_skin_list[| i];
    inst.team = i;
    objScore.score_add(i, 0);
    audio_play_sound(sndSpawn, 0, false);
  }
}
