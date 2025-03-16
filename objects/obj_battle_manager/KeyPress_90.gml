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
    show_debug_message("Bread: Great!");
    active_inst.hit = true;
    game_score += 20;
}
else if diff < good_hit_distance {
    show_debug_message("Bread: Good!");
    active_inst.hit = true;
    game_score += 10;
}
else {
    show_debug_message("Bread: Miss!");
    game_score -= 10;
}