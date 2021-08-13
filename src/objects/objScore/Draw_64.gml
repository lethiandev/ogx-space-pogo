/// @description Draw score UI
var guiw = display_get_gui_width();

if (ds_map_exists(score_map, 0)) {
  var value = score_map[? 0];
  draw_set_halign(fa_right);
  score_draw(value, guiw - 4, 4);
  score_draw(high_score, guiw - 4, 24, "h", font_default_small);
} else {
  draw_set_halign(fa_right);
  score_draw(high_score, guiw - 4, 4, "h", font_default_small);
}

if (ds_map_exists(score_map, 1)) {
  var value = score_map[? 1];
  draw_set_halign(fa_left);
  score_draw(value, 4, 4);
}

draw_set_halign(fa_left);
