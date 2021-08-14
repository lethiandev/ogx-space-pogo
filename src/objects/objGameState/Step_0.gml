/// @description Reset game state
is_ready_state = instance_exists(objPlayerSpawn);

anim_timer += 0.05;
if (anim_timer > 1) {
  anim_timer = 1;
}

if (not is_game_over) {
  return;
}

if (input_is_jumping_any()) {
  game_restart();
}
