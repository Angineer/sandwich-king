var _horiz = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _vert = keyboard_check(ord("S")) - keyboard_check(ord("W"))


move_and_collide(_horiz * movement_speed, _vert * movement_speed, [], undefined, undefined, undefined, movement_speed, movement_speed)

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