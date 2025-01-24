var lowest_depth = 200;
var lowest_object = undefined;

for (var i = 0; i < array_length(selectable_objects); i++) {
    var obj_id = selectable_objects[i];
    if (obj_id.mouse_over and obj_id.depth < lowest_depth)
    {
        lowest_depth = selectable_objects[i].depth;
        lowest_object = selectable_objects[i];
    }
}

if (lowest_object != undefined)
{
    lowest_object.selected = true;
}