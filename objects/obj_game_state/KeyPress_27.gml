if (room != rm_main_menu)
{
    if (paused)
    {
        paused = false
        obj_overlay_menu.visible = false
        obj_button_back.visible = false
        window_set_cursor(cr_default)
    }
    else {
        paused = true
    	obj_overlay_menu.visible = true
        obj_button_back.visible = true
    }
}