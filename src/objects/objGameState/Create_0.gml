/// @description Initialize game state
is_game_over = false;
is_ready_state = true;

anim_timer = 0;

function player_is_alive() {
  return instance_number(objPlayer) > 1;
}

function player_has_died() {
  if (not player_is_alive()) {
    is_game_over = true;
  }
}
