if keyboard_check(ord("W"))
{
    y -= 1 * movement_speed;
    direction = 90;
    sprite_index = spr_player_walk_up;
}
if keyboard_check(ord("A"))
{
    x -= 1 * movement_speed;
    direction = 180;
    sprite_index = spr_player_walk_left;
}
if keyboard_check(ord("S"))
{
    y += 1 * movement_speed;
    direction = 270;
    sprite_index = spr_player_walk_down;
}
if keyboard_check(ord("D"))
{
    x += 1 * movement_speed;
    direction = 0;
    sprite_index = spr_player_walk_right;
}
if keyboard_check(vk_nokey)
{
    if (direction == 0)
    {
         sprite_index = spr_player_idle_right;
    }
    if (direction == 90)
    {
        sprite_index = spr_player_idle_up;
    }
    if (direction == 180)
    {
        sprite_index = spr_player_idle_left;
    }
    if (direction == 270)
    {
        sprite_index = spr_player_idle_down;
    }
}
