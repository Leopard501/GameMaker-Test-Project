/// @description Switch pattern

pattern_variables = [0, 0];

if (pattern_idx >= array_length(patterns) - 1) {
    pattern_idx = 0;
} else {
    pattern_idx++;
}

alarm_set(1, patterns[pattern_idx].duration * (1 / pattern_speed));