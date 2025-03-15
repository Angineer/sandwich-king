if active {
    if diff < 5 {
        show_debug_message("Perfect!");
    }
    else if diff < 10 {
        show_debug_message("Great!");
    }
    else if diff < 20 {
        show_debug_message("Good!");
    }
    else {
        show_debug_message("Bad!")
    }
}
else {
    show_debug_message("Miss!");
}