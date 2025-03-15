if (active_ham == -1) exit;
    
var target_x = instance_find(obj_hit_detector, 1).x;
var actual_x = ham_instances[active_ham].x;
var diff = abs(target_x - actual_x);


if diff < 5 {
    show_debug_message("Ham: Perfect!");
}
else if diff < 10 {
    show_debug_message("Ham: Great!");
}
else if diff < 20 {
    show_debug_message("Ham: Good!");
}
else if diff < 50 {
    show_debug_message("Ham: Bad!");
}
else {
    show_debug_message("Ham: Miss!")
}