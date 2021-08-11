/// @description Draw score UI
var scores = ds_map_values_to_array(score_map);
var len = array_length(scores);

for (var i = 0; i < len; i++) {
  var xx = 10;
  var yy = 10 + 16 * i;
  score_draw(i, scores[i], xx, yy);
}
