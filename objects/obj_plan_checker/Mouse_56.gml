var all_filled = true

for (var i = 0; i < array_length(ingredient_slots); i++) {
    var obj_id = ingredient_slots[i];
    if (obj_id.filled_out == false)
    {
        all_filled = false;
        break;
    }
}

if (all_filled)
{
    obj_next_button.visible = true;
}
else
{
    obj_next_button.visible = false;
}