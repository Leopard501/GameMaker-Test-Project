global.P_System = part_system_create_layer("Particles", true);

global.small_explosion = part_type_create();
part_type_shape(global.small_explosion, pt_shape_flare);
part_type_size(global.small_explosion, 0.05, 0.2, 0, 0.2);
part_type_color3(global.small_explosion, c_yellow, c_orange, c_red);
part_type_alpha3(global.small_explosion, 0.5, 1, 0);
part_type_speed(global.small_explosion, 3, 8, 0, 0);
part_type_direction(global.small_explosion, 0, 360, 0, 0);
part_type_blend(global.small_explosion, true);
part_type_life(global.small_explosion, 10, 20);

global.large_explosion = part_type_create();
part_type_shape(global.large_explosion, pt_shape_flare);
part_type_size(global.large_explosion, 0.1, 0.5, 0, 0.2);
part_type_color3(global.large_explosion, c_yellow, c_orange, c_red);
part_type_alpha3(global.large_explosion, 0.5, 1, 0);
part_type_speed(global.large_explosion, 5, 10, 0, 0);
part_type_direction(global.large_explosion, 0, 360, 0, 0);
part_type_blend(global.large_explosion, true);
part_type_life(global.large_explosion, 20, 40);