/// @description Spawn

if (wave_idx >= array_length(waves)) {
	exit;
}

show_debug_message("spawn {0} of wave {1}", spawn_idx, wave_idx);

var _current_wave = waves[wave_idx];

if (spawn_idx < array_length(_current_wave.spawns)) {
	_current_wave.Spawn(_current_wave.spawns[spawn_idx]);
	alarm_set(0, _current_wave.delay);
}

spawn_idx++;