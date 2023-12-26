#region Y_movement

if (y <= 128) {
	move_down = true;
} if (y >= 900 - 128) {
	move_down = false;
}

if (x <= target_x) {
	if move_down { y += move_speed; }
	else { y -= move_speed; }
}

#endregion

#region X_movement

if (x > target_x) {
	x -= move_speed;	
}

#endregion