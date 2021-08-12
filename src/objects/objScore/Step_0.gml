/// @description Update highscore
var scores = ds_map_values_to_array(score_map);
var len = array_length(scores);
var max_score = high_score;

for (var i = 0; i < len; i++) {
  max_score = max(max_score, scores[i]);
}

if (max_score != high_score) {
  high_score = max_score;
  ini_open("persistent.ini");
  ini_write_string("scoring", "highscore", string(high_score));
  ini_close();
}
