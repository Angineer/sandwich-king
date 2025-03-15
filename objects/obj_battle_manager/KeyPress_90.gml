if (active_bread == -1) exit;
    
var target_x = instance_find(obj_hit_detector, 0).x;
var actual_x = bread_instances[active_bread].x;
var diff = abs(target_x - actual_x);


if diff < 5 {
    show_debug_message("Bread: Perfect!");
}
else if diff < 10 {
    show_debug_message("Bread: Great!");
}
else if diff < 20 {
    show_debug_message("Bread: Good!");
}
else if diff < 50 {
    show_debug_message("Bread: Bad!");
}
else {
    show_debug_message("Bread: Miss!")
}