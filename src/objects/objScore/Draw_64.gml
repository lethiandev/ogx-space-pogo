/// @description Draw score UI
var guiw = display_get_gui_width();
var hiscore_alpha = 1;

if (score_beaten and not instance_exists(objPlayer)) {
  hiscore_alpha = floor(current_time / 250) % 2;
}

if (ds_map_exists(score_map, 0)) {
  var value = score_map[? 0];
  draw_set_halign(fa_right);
  score_draw(value, guiw - 4, 4);
  draw_set_alpha(hiscore_alpha);
  score_draw(high_score, guiw - 4, 24, "h", font_default_small);
} else {
  draw_set_halign(fa_right);
  draw_set_alpha(hiscore_alpha);
  score_draw(high_score, guiw - 4, 4, "h", font_default_small);
}
draw_set_alpha(1);

if (ds_map_exists(score_map, 1)) {
  var value = score_map[? 1];
  draw_set_halign(fa_left);
  score_draw(value, 4, 4);
}

draw_set_halign(fa_left);
