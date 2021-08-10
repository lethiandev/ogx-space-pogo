/// @description Setup score system
score_map = ds_map_create();

function score_add(team, val) {
  if (!ds_map_exists(score_map, team)) {
    score_map[? team] = 0;
  }
  score_map[? team] += val;
}
