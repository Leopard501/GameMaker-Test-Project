/// @description Move

x += max_speed;

if (x > room_width + 128) {
	instance_destroy();
}