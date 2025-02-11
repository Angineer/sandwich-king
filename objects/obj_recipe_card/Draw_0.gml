var depth_range = room_height;
depth = 200 - (bbox_bottom / room_height) * 100;
draw_self();

draw_text_transformed_colour(x+12, y+10, title, 0.5, 0.5, 0.0, c_black, c_black, c_black, c_black, 1.0);