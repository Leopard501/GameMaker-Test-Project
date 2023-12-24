hp--;
part_particles_create(global.P_System, x, y, global.small_explosion, 10);

if (hp <= 0) { instance_destroy(); }