if (active_bread == -1) exit;
    
var active_inst = bread_instances[active_bread];
    
if (active_inst.hit == true) {
    game_score -=10;
    exit;
}
    
var target_x = bread_detector.x;
var actual_x = active_inst.x;
var diff = abs(target_x - actual_x);

if diff < great_hit_distance {
    active_inst.hit = true;
    bread_detector.text = "Great!"
    game_score += 20;
}
else if diff < good_hit_distance {
    active_inst.hit = true;
    bread_detector.text = "Good!"
    game_score += 10;
}
else {
    bread_detector.text = "Miss!"
    game_score -= 10;
}

bread_detector.alpha = 1;