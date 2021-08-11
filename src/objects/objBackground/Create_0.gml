/// @description Prepare background controller
background_current_surface = surface_create(room_width, room_height);
background_next_surface = surface_create(room_width, room_height);

background_current = bgTier0;
background_next = noone;
timer = 0;

function update_background(surf, spr) {
  var ww = room_width;
  var hh = room_height / 2;
  
  surface_set_target(surf);
  draw_sprite_stretched(spr, 0, 0, 0, ww, hh);
  draw_sprite_stretched(spr, 2, 0, hh, ww, hh);
  for (var i = 0; i < 15; i++) {
    var xx = i * sprite_get_width(spr);
    var yy = sprite_get_height(spr) / 2;
    draw_sprite(spr, 1, xx, hh - yy);
  }
  surface_reset_target();
}

function swap_surfaces() {
  var prev = background_current_surface;
  background_current_surface = background_next_surface;
  background_next_surface = prev;
}

// Update initial background surface
update_background(background_current_surface, background_current);
