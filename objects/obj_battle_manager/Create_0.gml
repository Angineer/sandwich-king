x_start_position = window_get_width() + 100;
x_spacing = 100;

bread_pattern = [1, 3, 5, 7];
ham_pattern = [3, 4, 7, 8]


bread_instances = []
for (i=0; i<array_length(bread_pattern); i+=1) {
    var bread_x = x_start_position + (bread_pattern[i] - 1) * x_spacing;
    var bread_y = instance_find(obj_hit_detector, 0).y;
    array_push(bread_instances, instance_create_layer(bread_x, bread_y, "Instances", obj_slider_bread));
}

ham_instances = []
for (i=0; i<array_length(ham_pattern); i+=1) {
    var ham_x = x_start_position + (ham_pattern[i] - 1) * x_spacing;
    var ham_y = instance_find(obj_hit_detector, 1).y;
    array_push(ham_instances, instance_create_layer(ham_x, ham_y, "Instances", obj_slider_ham));
}

active_bread = 0
active_ham = 0