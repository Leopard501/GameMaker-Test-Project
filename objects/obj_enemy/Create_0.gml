move_down = (random(2) < 1);

fire_delay = random_range(fire_delay * 0.8, fire_delay * 1.2);

alarm_set(0, fire_delay);

image_xscale = scale;
image_yscale = scale;

target_x = random_range(900, 1400 - 128);