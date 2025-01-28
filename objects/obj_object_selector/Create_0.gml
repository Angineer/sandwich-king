selectable_objects = []

for (var i = 0; i < instance_number(obj_drag_and_drop); ++i;)
{
    selectable_objects[i] = instance_find(obj_drag_and_drop,i);
}

selected_object = undefined;