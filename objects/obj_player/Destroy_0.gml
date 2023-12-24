part_particles_create(global.P_System, x, y, global.large_explosion, 100);

with (instance_find(obj_main, 0)) {
	alarm_set(0, 60);
}