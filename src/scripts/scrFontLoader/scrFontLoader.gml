globalvar font_default, font_default_small;

var map = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
font_default = font_add_sprite_ext(sprDefaultFont, map, false, 0);

var map2 = "0123456789h";
font_default_small = font_add_sprite_ext(sprDefaultSmallFont, map2, false, 0);
