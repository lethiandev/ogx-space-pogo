// Map multiple keys to single jump action
keyboard_set_map(vk_right, vk_up);
keyboard_set_map(vk_down, vk_up);
keyboard_set_map(vk_left, vk_up);
keyboard_set_map(vk_space, vk_up);

keyboard_set_map(ord("D"), ord("W"));
keyboard_set_map(ord("S"), ord("W"));
keyboard_set_map(ord("A"), ord("W"));

// Checks player jumping input
function input_is_jumping(player) {
  if (player == 0) {
    var mouse_is_pressed = mouse_check_button_pressed(mb_any);
    return keyboard_check_pressed(vk_up) or mouse_is_pressed;
  } else if (player == 1) {
    return keyboard_check_pressed(ord("W"));
  }
}

function input_is_jumping_any() {
  var p1 = input_is_jumping(0);
  var p2 = input_is_jumping(1);
  return p1 || p2;
}
