/// @description Insert description here
var guiw, guih;
guiw = display_get_gui_width();
guih = display_get_gui_height();
  
if (is_ready_state) {
  draw_set_valign(fa_middle);
  draw_set_halign(fa_center);
  draw_set_font(font_default);
  if (not spawn_has_instance(0)) {
    draw_text(guiw / 4 + guiw / 2, guih / 2 + 100, "Press Up\nto join");
  }
  if (not spawn_has_instance(1)) {
    draw_text(guiw / 4, guih / 2 + 100, "Press W\nto join");
  }
}

if (is_game_over) {
  draw_set_valign(fa_middle);
  draw_set_halign(fa_center);
  draw_set_font(font_default);
  draw_text(guiw / 2, guih / 2, "Game Over");
}

draw_set_valign(fa_top);
draw_set_halign(fa_left);
