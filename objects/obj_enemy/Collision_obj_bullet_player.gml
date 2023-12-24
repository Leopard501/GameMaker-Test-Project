hp--;

if (hp <= 0) { 
	instance_destroy(); 
}
else { 
	audio_play_sound_ext({ sound: snd_enemy_hurt }); 
	part_particles_create(global.P_System, x, y, global.small_explosion, 10);
}