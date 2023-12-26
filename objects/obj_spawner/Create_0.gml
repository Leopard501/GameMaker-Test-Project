function Wave(_delay, _spawns) constructor {
	delay = _delay;
	spawns = _spawns;
	
	static Spawn = function(_obj) {
		instance_create_layer(1400 + 128, random_range(128, 900 - 128), "Enemies", _obj);	
	}
}

waves = [
	new Wave(30, [
		obj_enemy,
	]),
	new Wave(60, [
		obj_enemy,
		obj_enemy,
		obj_enemy,
	]),
	new Wave(40, [
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy,
	]),
	new Wave(80, [
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy_super
	]),
	new Wave(30, [
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy,
	]),
	new Wave(80, [
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy,
		obj_enemy_super,
	]),
	new Wave(60, [
		obj_enemy_super,
		obj_enemy,
		obj_enemy_super,
		obj_enemy,
		obj_enemy_super,
	]),
	new Wave(30, [
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
	]), 
	new Wave(10, [
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy,
	]), 
	new Wave(3, [
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy_super,
		obj_enemy,
		obj_enemy,
		obj_enemy_super,
		obj_enemy,
	]),
];

wave_idx = 0;
spawn_idx = 0;

alarm_set(0, waves[wave_idx].delay);