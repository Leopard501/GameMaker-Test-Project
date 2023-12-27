/// @description Trigger pattern action

patterns[pattern_idx].action(pattern_variables);
alarm_set(0, patterns[pattern_idx].delay * pattern_speed);