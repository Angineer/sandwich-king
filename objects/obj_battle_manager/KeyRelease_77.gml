if (active_ham == -1) exit;
    
var active_inst = ham_instances[active_ham];

if (active_inst.hit == true) {
    game_score -=10;
    exit;
}
    
var target_x = ham_detector.x;
var actual_x = active_inst.x;
var diff = abs(target_x - actual_x);

if diff < great_hit_distance {
    active_inst.hit = true;
    ham_detector.text = "Great!"
    game_score += 20;
}
else if diff < good_hit_distance {
    active_inst.hit = true;
    ham_detector.text = "Good!"
    game_score += 10;
}
else {
    ham_detector.text = "Miss!"
    game_score -= 10;
}

ham_detector.alpha = 1;