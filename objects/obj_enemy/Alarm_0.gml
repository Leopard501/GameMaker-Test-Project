/// @description Fire

var _b1 = instance_create_layer(x, y, "Enemy_Bullets", obj_bullet_enemy);
with (_b1) {
	direction = 180;
	speed = 6;
}

audio_play_sound_ext({ sound: snd_enemy_fire }); 

alarm_set(0, fire_delay);