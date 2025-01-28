if (active_recipe != undefined)
{
    active_recipe.x = mouse_x - active_recipe.sprite_width / 2;
    active_recipe.y = mouse_y - active_recipe.sprite_height / 2;
    active_recipe.visible = true;
    
    active_recipe.selected = true;
    obj_object_selector.selected_object = active_recipe;
    obj_next_button.visible = false;
}
active_recipe = undefined;