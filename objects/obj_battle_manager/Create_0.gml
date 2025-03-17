game_score = 0;

x_start_position = window_get_width() + 95;
// Spacing = frame_rate * slider_speed * 60 / BPM / k
x_spacing = 60 * 5 * 60 / 70 / 2;

great_hit_distance = 20;
good_hit_distance = 40;

bread_pattern = [1, 3, 5, 7];
//bread_pattern = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25];
ham_pattern = [3, 4, 7, 8]

bread_detector = instance_find(obj_hit_detector, 0);
ham_detector = instance_find(obj_hit_detector, 1);

bread_instances = []
for (i=0; i<array_length(bread_pattern); ++i) {
    var bread_x = x_start_position + (bread_pattern[i] - 1) * x_spacing;
    var bread_y = bread_detector.y;
    var new_bread = instance_create_layer(bread_x, bread_y, "Instances", obj_slider_bread);
    array_push(bread_instances, new_bread);
}

ham_instances = []
for (i=0; i<array_length(ham_pattern); ++i) {
    var ham_x = x_start_position + (ham_pattern[i] - 1) * x_spacing;
    var ham_y = ham_detector.y;
    var new_ham = instance_create_layer(ham_x, ham_y, "Instances", obj_slider_ham);
    array_push(ham_instances, new_ham);
}

active_bread = 0
active_ham = 0