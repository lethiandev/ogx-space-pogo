/// @description Reset game state
if (not is_game_over) {
  return;
}

if (input_is_jumping_any()) {
  game_restart();
}
