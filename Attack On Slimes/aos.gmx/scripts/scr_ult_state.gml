   //Get Direction
    scr_getinput();
 if (dash && obj_player_stats.stamina >= DASH_COST){
    state = scr_dash_state;
    alarm[2] = room_speed/6;
    obj_player_stats.stamina -=DASH_COST;
    obj_player_stats.alarm[0] = room_speed;
    }
if (atk){
    image_index = 0;
    state = scr_atk_state;
    }
 //Get Direction
dir = point_direction(0,0,xaxis,yaxis);

//Get Length
if (xaxis == 0 and yaxis ==0)
    {len=0;}
else{
    len=spd;
    scr_getface();
    }

    //Get the hspd and vspd
    hspd = lengthdir_x(len,dir);
    vspd = lengthdir_y(len,dir);

    //Move
    phy_position_x += hspd;
    phy_position_y += vspd;

    //Control the sprite
    image_speed = sign(len)*.2;
    if (len==0) image_index = 0;


switch(face){
    case RIGHT:
        sprite_index = spr_ult_right;
        break;
    
    case UP:
        sprite_index = spr_ult_up;
        break;
        
    case LEFT:
        sprite_index = spr_ult_left;
        break; 
        
    case DOWN:
        sprite_index = spr_ult_down;
        break;
        }

