/// @description Fire

var _b1 = instance_create_layer(x, y, "Enemy_Bullets", obj_bullet_enemy);
with (_b1) {
	direction = 180;
	speed = 6;
}
alarm_set(0, fire_delay);