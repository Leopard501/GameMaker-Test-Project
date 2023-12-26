/// @description Super fire

if (x > room_width + sprite_get_width(sprite_index)) {
	exit;	
}

var _b1 = instance_create_layer(x, y, "Enemy_Bullets", obj_bullet_enemy);
with (_b1) {
	direction = 150;
	speed = 6;
}
var _b2 = instance_create_layer(x, y, "Enemy_Bullets", obj_bullet_enemy);
with (_b2) {
	direction = 180;
	speed = 6;
}
var _b3 = instance_create_layer(x, y, "Enemy_Bullets", obj_bullet_enemy);
with (_b3) {
	direction = 210;
	speed = 6;
}

audio_play_sound_ext({ sound: snd_enemy_super }); 

alarm_set(0, fire_delay);