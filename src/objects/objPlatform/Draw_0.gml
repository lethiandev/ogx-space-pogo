/// @description Draw platform tiled
if (size == 1) {
  draw_sprite(sprite_index, 0, x, y);
} else {
  var width = sprite_get_width(sprite_index);
  var xx = (size - 1) * width;
  draw_sprite(sprite_index, 1, x, y);
  draw_sprite(sprite_index, 3, x + xx, y);
  
  for (var i = 1; i < size - 1; i++) {
    var xx2 = i * width;
    draw_sprite(sprite_index, 2, x + xx2, y);
  }
}
