/// scr_move_state
scr_getinput();
 
if (right){
    phy_position_x += spd;
    sprite_index = spr_girl_right;
    image_speed = .2;
}

if (left){
    phy_position_x -= spd;
    sprite_index = spr_girl_left;
    image_speed = .2;
}

if (up){
    phy_position_y -= spd;
    sprite_index = spr_girl_up;
    image_speed = .2;
}

if (down){
    phy_position_y += spd;
    sprite_index = spr_girl_down;
    image_speed = .2;
}

//stop animating
if (!down and !up and !right and !left){
    image_speed =0;
    image_index = 0;
}
