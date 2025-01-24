selectable_objects = []

for (var i = 0; i < instance_number(obj_recipe_card); ++i;)
{
    selectable_objects[i] = instance_find(obj_recipe_card,i);
}