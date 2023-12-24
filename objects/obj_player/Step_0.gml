#region Move

var _x_move = (keyboard_check(vk_right) ? 1 : 0) - (keyboard_check(vk_left) ? 1 : 0);
var _y_move = (keyboard_check(vk_down) ? 1 : 0) - (keyboard_check(vk_up) ? 1 : 0);

var _move_direction = new vec2(_x_move, _y_move);
	
_move_direction.normalize();
_move_direction.multiply(max_speed);

x += _move_direction.x;
y += _move_direction.y;

#endregion


#region Fire

if (can_fire && keyboard_check(ord("Z"))) {
	instance_create_layer(x, y, "Player_Bullets", obj_bullet_player);
	audio_play_sound_ext({ sound: snd_player_fire });
	can_fire = false;
	alarm_set(0, fire_delay);
}

#endregion