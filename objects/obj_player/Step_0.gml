var _horiz = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _vert = keyboard_check(ord("S")) - keyboard_check(ord("W"))
var _speed = movement_speed * speed_multiplier;

move_and_collide(_horiz * _speed, _vert * _speed, [obj_game_state.tile_map], undefined, undefined, undefined, _speed, _speed)

if (_horiz != 0 or _vert != 0)
{
    if (_horiz < 0)
    {
        direction = 180;
        sprite_index = spr_hero_walk_left;
    }
    else if (_horiz > 0)
    {
        direction = 0;
        sprite_index = spr_hero_walk_right;
    }
    else if (_vert < 0)
    {
        direction = 90;
        sprite_index = spr_hero_idle_up;
    }
    else if (_vert > 0)
    {
        direction = 270;
        sprite_index = spr_hero_idle_down;
    }
}
else {
   if (direction == 0) sprite_index = spr_hero_idle_right;
   else if (direction == 90) sprite_index = spr_hero_idle_up;
   else if (direction == 180) sprite_index = spr_hero_idle_left;
   else if (direction == 270) sprite_index = spr_hero_idle_down;
}