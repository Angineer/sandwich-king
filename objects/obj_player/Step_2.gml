if x < 0
{
    if obj_game_state.room_west != noone
    {
       room_goto(obj_game_state.room_west);
        x = room_width;
    }
    else {
        x = 0;
    }
}
if x > room_width
{
    if obj_game_state.room_east != noone
    {
       room_goto(obj_game_state.room_east);
        x = 0;
    }
    else {
        x = room_width;
    }
}
if y < 0
{
    if obj_game_state.room_north != noone
    {
       room_goto(obj_game_state.room_north);
        y = room_height;
    }
    else {
        y = 0;
    }
}
if y > room_height
{
    if obj_game_state.room_south != noone
    {
       room_goto(obj_game_state.room_south);
        y = 0;
    }
    else {
        y = room_height;
    }
}