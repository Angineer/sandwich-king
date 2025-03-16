if instance_exists(obj_slider_bread) {
    for (i=0; i<array_length(bread_pattern); ++i) {
        var candidate_bread = bread_instances[i];
        if (instance_exists(candidate_bread) && candidate_bread.x + good_hit_distance >= bread_detector.x) {
            active_bread = i;
            break;
        }
    }
} else {
    active_bread = -1;
}

if instance_exists(obj_slider_ham) { 
    for (i=0; i<array_length(ham_pattern); ++i) {
        var candidate_ham = ham_instances[i];
        if (instance_exists(candidate_ham) && candidate_ham.x + good_hit_distance >= ham_detector.x) {
            active_ham = i;
            break;
        }
    }
} else {
    active_ham = -1;
}

if (active_bread == -1 && active_ham == -1 && alarm_get(0) == -1) {
    alarm_set(0, 60);
}