/// @description Setup score system
score_map = ds_map_create();
score_font = font_add_sprite(sprScoreFont, ord("0"), false, 0);

function score_add(team, val) {
  if (!ds_map_exists(score_map, team)) {
    score_map[? team] = 0;
  }
  score_map[? team] += val;
}

function score_draw(team, val, x, y) {
  var valstr = string_pad(val, 8);
  draw_set_font(score_font);
  draw_text(x, y, valstr);
  draw_set_font(-1);
}

function string_pad(val, pad) {
  return string_replace_all(string_format(val, pad, 0), " ", "0");
}
