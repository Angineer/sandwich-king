if (active_recipe != undefined)
{
    draw_rectangle_colour(x, y, x + sprite_width, y+sprite_height, c_white, c_white, c_white, c_white, false);
    draw_text_colour(x, y, active_recipe.title, c_black, c_black, c_black, c_black, 1.0);
    draw_text_colour(x, y+20, active_recipe.ingredients, c_black, c_black, c_black, c_black, 1.0);
}
else {
    draw_self();
}