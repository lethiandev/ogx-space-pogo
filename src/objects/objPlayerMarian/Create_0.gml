/// @description Prepare marian effect
body_sprite = sprPlayerA;
pogo_sprite = sprPogoStick;

var side = choose(-1, 1);

body_velocity_x = (0.1 + random(1)) * side;
body_velocity_y = -(2 + random(1));
body_x = 0;
body_y = 0;

pogo_velocity_x = (0.1 + random(1)) * side * -1;
pogo_velocity_y = -(2 + random(1));
pogo_x = 0;
pogo_y = 0;
