if instance_exists(obj_slider_bread) { 
    if !instance_exists(bread_instances[active_bread]){
          active_bread += 1;
    }
} else {
    active_bread = -1;
}

if instance_exists(obj_slider_ham) { 
    if !instance_exists(ham_instances[active_ham]){
        active_ham += 1;
    }
} else {
    active_ham = -1;
}