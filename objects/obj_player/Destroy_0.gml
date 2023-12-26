part_particles_create(global.P_System, x, y, global.large_explosion, 100);
audio_play_sound_ext({ sound: snd_explode });

with (global.main) {
	alarm_set(0, 60);
}

if (global.current_track != undefined) {
	audio_stop_sound(global.current_track);
}