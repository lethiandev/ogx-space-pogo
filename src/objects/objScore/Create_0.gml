/// @description Setup score system
globalvar high_score;

score_map = ds_map_create();
score_font = font_add_sprite(sprScoreFont, ord("0"), false, 0);
score_small_font = font_add_sprite(sprScoreSmallFont, ord("0"), false, 0);

ini_open("persistent.ini");
high_score = real(ini_read_string("scoring", "highscore", 0));
ini_close();

var cam = view_get_camera(0);
var camw = camera_get_view_width(cam);
var camh = camera_get_view_height(cam);
display_set_gui_size(camw, camh);

function score_add(team, val) {
  if (!ds_map_exists(score_map, team)) {
    score_map[? team] = 0;
  }
  score_map[? team] += val;
}

function score_draw(val, x, y, font = score_font) {
  var valstr = string_pad(val, 8);
  draw_set_font(font);
  draw_text(x, y, valstr);
  draw_set_font(-1);
}

function string_pad(val, pad) {
  return string_replace_all(string_format(val, pad, 0), " ", "0");
}
