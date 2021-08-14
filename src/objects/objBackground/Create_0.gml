/// @description Prepare background controller
background_current_surface = surface_create(room_width, room_height);
background_next_surface = surface_create(room_width, room_height);

background_current = bgTier0;
background_next = noone;
timer = 0;

background_tier_map = ds_map_create();
background_tier_map[? sprPlatformTier0] = bgTier0;
background_tier_map[? sprPlatformTier1] = bgTier1;
background_tier_map[? sprPlatformTier2] = bgTier2;
background_tier_map[? sprPlatformTier3] = bgTier3;

function background_update(surf, spr) {
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

function background_get_tier(spr) {
  if (ds_map_exists(background_tier_map, spr)) {
    return background_tier_map[? spr];
  }
  return noone;
}

function background_update_tier(spr) {
  var tier = background_get_tier(spr);
  if (background_current != tier) {
    background_next = tier;
  }
}

function swap_surfaces() {
  var prev = background_current_surface;
  background_current_surface = background_next_surface;
  background_next_surface = prev;
}

// Update initial background surface
background_update(background_current_surface, background_current);
background_update(background_next_surface, background_current);
