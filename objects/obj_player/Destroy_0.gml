part_particles_create(global.P_System, x, y, global.large_explosion, 100);
audio_play_sound_ext({ sound: snd_explode });

with (instance_find(obj_main, 0)) {
	alarm_set(0, 60);
}