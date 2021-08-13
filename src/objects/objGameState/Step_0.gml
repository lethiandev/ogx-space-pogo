/// @description Reset game state
is_ready_state = instance_exists(objPlayerSpawn);

if (not is_game_over) {
  return;
}

if (input_is_jumping_any()) {
  game_restart();
}
