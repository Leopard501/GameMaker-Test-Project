if (y <= 128) {
	move_down = true;
}
if (y >= 900 - 128) {
	move_down = false;
}

if move_down { y += move_speed; }
else { y -= move_speed; }