var colliding_obj = instance_place(x, y, obj_slider_bread);

if colliding_obj == noone {
    active = false;
} else {
    active = true;
    diff = abs(x - colliding_obj.x);
}