ingredient_slots = []

for (var i = 0; i < instance_number(obj_ingredient_reader); ++i;)
{
    ingredient_slots[i] = instance_find(obj_ingredient_reader,i);
}