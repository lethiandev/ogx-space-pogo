/// @description Draw score UI

if (ds_map_exists(score_map, 0)) {
  var value = score_map[? 0];
  var xx = display_get_gui_width();
  draw_set_halign(fa_right);
  score_draw(value, xx - 4, 4);
  score_draw(high_score, xx - 4, 20, score_small_font);
}

if (ds_map_exists(score_map, 1)) {
  var value = score_map[? 1];
  draw_set_halign(fa_left);
  score_draw(value, 4, 4);
}

draw_set_halign(fa_left);
