if x < 0
{
    if obj_game_state.room_west != noone
    {
        room_goto(obj_game_state.room_west);
        enter_from = "east";
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
        enter_from = "west";
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
        enter_from = "south";
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
        enter_from = "north";
    }
    else {
        y = room_height;
    }
}