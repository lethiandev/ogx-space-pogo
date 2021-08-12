/// @description Insert description here
if (is_game_over) {
  var guiw, guih;
  guiw = display_get_gui_width();
  guih = display_get_gui_height();
  draw_set_valign(fa_middle);
  draw_set_halign(fa_center);
  draw_text(guiw / 2, guih / 2, "Game Over");
}

draw_set_valign(fa_top);
draw_set_halign(fa_left);
