/// @description Insert description here
objGameState.player_has_died();

// Create destroy effect
var inst = instance_create_layer(x, y, "Players", objPlayerMarian);
inst.body_sprite = skin;

audio_play_sound(sndFall, 0, false);
