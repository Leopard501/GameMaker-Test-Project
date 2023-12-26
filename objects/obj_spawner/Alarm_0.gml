/// @description Spawn

if (wave_idx >= array_length(waves)) {
	exit;
}

show_debug_message("spawn {0} of wave {1}", spawn_idx, wave_idx);

if (spawn_idx < array_length(waves[wave_idx].spawns)) {
	waves[wave_idx].Spawn(waves[wave_idx].spawns[spawn_idx]);
	alarm_set(0, waves[wave_idx].delay);
}

spawn_idx++;