
/// scr_dash

    if (len ==0){
    dir = face*90;
    }
    len = spd*4
    
    var xa = 0;
    var ya = 0;
    var mdir = 0;
    if (obj_input.right or obj_input.left or obj_input.down or obj_input.up)
    {
        if (obj_input.right)
        {xa = 1;}
         if (obj_input.left)
        {xa = -1;}
        if (obj_input.down)
        {ya = 1;}
         if (obj_input.up)
        {ya = -1;}
        }
    else
    {
        if (obj_player2.sprite_index = spr_player_up)
        {
            ya = -1;
        }
        if (obj_player2.sprite_index = spr_player_down)
        {
            ya = 1;
        }
        if (obj_player2.sprite_index = spr_player_right)
        {
            xa = 1;
        }
        if (obj_player2.sprite_index = spr_player_left)
        {
            xa = -1;
        }
    }
    mdir = point_direction(0,0,xa,ya);
    
    hspd = lengthdir_x(len,mdir);
    vspd = lengthdir_y(len,mdir);
    
    //Move
    phy_position_x += hspd/12;
    phy_position_y += vspd/12;
    
    // Create dash effect
    var dash = instance_create(x,y, obj_dasheffect);
    dash.sprite_index  = sprite_index;
    dash.image_index = image_index;


