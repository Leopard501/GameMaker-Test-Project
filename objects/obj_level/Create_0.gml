function Wave(_delay, _spawns, _track = undefined) constructor {
	delay = _delay;
	spawns = _spawns;
	track = _track;
	
	static Spawn = function(_obj) {
		instance_create_layer(1400 + 128, random_range(128, 900 - 128), "Enemies", _obj);	
	}
}

function Start_Music(_track) {
	if (_track != undefined && _track != global.current_track) {
		if (global.current_track != undefined) {
			audio_stop_sound(global.current_track);
		}
		global.current_track = _track;
		audio_play_sound(global.current_track, 0, true);
	}	
}

waves = [
	new Wave(30, [
		obj_enemy,
	], snd_music_fight1),
	new Wave(60, [
		obj_enemy,
		obj_enemy,
		obj_enemy,
	], snd_music_fight3),

];

global.current_track = undefined;

wave_idx = 0;
spawn_idx = 0;

Start_Music(waves[wave_idx].track);
alarm_set(0, waves[wave_idx].delay);