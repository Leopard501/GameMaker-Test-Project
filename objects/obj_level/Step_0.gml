/// @description Check for no enemies

if (!instance_exists(obj_enemy) && !instance_exists(obj_enemy_super) && alarm_get(0) < 0) {
	// advance wave
	spawn_idx = 0;
	wave_idx++;
	if (wave_idx < array_length(waves)) {
		// reset timer
		alarm_set(0, waves[wave_idx].delay);
	} else { 
		// restart waves
		wave_idx = 0;
		alarm_set(0, waves[wave_idx].delay);
	}
	Start_Music(waves[wave_idx].track);
}