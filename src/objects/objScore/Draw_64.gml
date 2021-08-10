/// @description Draw score UI
var scores = ds_map_values_to_array(score_map);
var len = array_length(scores);

function pad_score(val) {
  return string_replace_all(string_format(val, 8, 0), " ", "0");
}

for (var i = 0; i < len; i++) {
  var xx = 10;
  var yy = 10 + 16 * i;
  var val = pad_score(scores[i]);
  draw_text(xx, yy, val);
}
