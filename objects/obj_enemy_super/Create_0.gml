move_down = (random(2) < 1);
fire_delay = random_range(fire_delay * 0.8, fire_delay * 1.2);
death_particle = global.large_explosion;

alarm_set(0, fire_delay);