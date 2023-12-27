function Pattern(_delay, _duration, _action) constructor {
    delay = _delay;
    duration = _duration;
    action = _action;
}

patterns = [
    new Pattern(60, 120, function () {
        // "Pause"
    }),
    new Pattern(10, 600, function(_pattern_variables) {
        // "Spray"
		if (_pattern_variables[0] == 0) {
			// initialize angle
			_pattern_variables[0] = 180;	
		}
		audio_play_sound_ext({ sound: snd_enemy_fire }); 
        var _bullet = instance_create_layer(x, y, "Enemy_Bullets", obj_bullet_enemy);
        with (_bullet) {
            direction = _pattern_variables[0];
            speed = 6;
        }
		if (_pattern_variables[1] == 0) {
			// increment angle
			_pattern_variables[0] += 10;
			if (_pattern_variables[0] > 210) {
				_pattern_variables[1] = 1;	
			}
		} else {
			// decrement angle
			_pattern_variables[0] -= 10;
			if (_pattern_variables[0] < 150) {
				_pattern_variables[1] = 0;	
			}
		}
    }),
    new Pattern(30, 600, function(_pattern_variables) {
        // "Star"
		audio_play_sound_ext({ sound: snd_enemy_fire }); 
        for (var _d = 0; _d < 360; _d += 30) {
            var _bullet = instance_create_layer(x, y, "Enemy_Bullets", obj_bullet_enemy);
            with (_bullet) {
                direction = _d + _pattern_variables[0];
                speed = 6;
            }
        }
		// Swap displacement
		if (_pattern_variables[0] == 0) {
			_pattern_variables[0] = 15;	
		} else {
			_pattern_variables[0] = 0;	
		}
    }),
	new Pattern(60, 600, function() {
		// "Sniper"
		audio_play_sound_ext({ sound: snd_enemy_super }); 
		var _sniper_bullet = instance_create_layer(x, y, "Enemy_Bullets", obj_bullet_enemy);
        with (_sniper_bullet) {
            direction = point_direction(x, y, global.player.x, global.player.y);
            speed = 10;
        }
		for (var _d = 135; _d <= 225; _d += 45) {
            var _star_bullet = instance_create_layer(x, y, "Enemy_Bullets", obj_bullet_enemy);
            with (_star_bullet) {
                direction = _d;
                speed = 6;
            }
        }
	}),
	new Pattern(90, 600, function () {
		// "Wave"
		audio_play_sound_ext({ sound: snd_enemy_super }); 
		var _displacement = random(360);
		for (var _d = 0; _d < 360; _d += 10) {
            var _bullet = instance_create_layer(x, y, "Enemy_Bullets", obj_bullet_enemy);
            with (_bullet) {
                direction = _d + _displacement;
                speed = 6;
            }
        }
	}),
	new Pattern(10, 600, function (_pattern_variables) {
		// "Arrow"
		audio_play_sound_ext({ sound: snd_enemy_fire }); 
		var _change = 10;
		var _bullet_upper = instance_create_layer(x, y + _pattern_variables[0] * _change, "Enemy_Bullets", obj_bullet_enemy);
        with (_bullet_upper) {
            direction = 180;
            speed = 10;
        }
		var _bullet_lower = instance_create_layer(x, y - _pattern_variables[0] * _change, "Enemy_Bullets", obj_bullet_enemy);
        with (_bullet_lower) {
            direction = 180;
            speed = 10;
        }
		// update
		if (_pattern_variables[0] == 5) {
			_pattern_variables[0] = 0;	
		} else {
			_pattern_variables[0]++;
		}
	}),
];

// effectively a reference
pattern_variables = [0, 0];

pattern_idx = 0;

move_down = (random(2) < 1);

alarm_set(0, patterns[pattern_idx].delay * pattern_speed);
alarm_set(1, patterns[pattern_idx].duration * 1 / pattern_speed);

target_x = random_range(900, 1400 - 128);