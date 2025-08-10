audio_stop_all();
audio_play_sound(snd_title, 1, true);

draw_set_font(fnt_title);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

game_set_speed(60, gamespeed_fps);

obj_overlay_menu.visible = false
obj_button_back.visible = false
window_set_cursor(cr_default)