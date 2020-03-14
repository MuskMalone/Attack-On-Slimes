/// scr_move
scr_getinput();
if (obj_input.dash && obj_player_stats.dash_charge >= 1){ 
    state = scr_dash_state;
    alarm[0] = room_speed/6;
    obj_player_stats.dash_charge -=1;
    if (obj_player_stats.alarm[0] == -1)
    {obj_player_stats.alarm[0] =room_speed*2;}
    audio_play_sound(sound_dash,8,false);
}
if (obj_input.atk){
    image_index = 0;
    state = scr_atk_state;
}

if (obj_input.ultimate){ 
    if (obj_player_stats.ult >= 100){
     
     image_index = 0;
     state = scr_ult_state;
     obj_player_stats.state = "ult";
     obj_player_stats.ult = 0;
     alarm[0] = room_speed*6;
     }
     
}

if (obj_input.die){
    if (instance_exists(obj_player2)){
        obj_player_stats.hp = 0;
    }
}
if (obj_input.killboss){
    if (instance_exists(obj_boss)){
        obj_boss.hp = 0;
    }
}
if (obj_input.opendoor){
    if (instance_exists(obj_block)){
    with(obj_block){
        instance_destroy();}
    }
}
if (obj_input.gun_shoot && alarm[1] = -1){
    count = 1;
    alarm[1] = 1;
    obj_cursor.sprite_index = spr_cursor_click;
    
     
    /*var p = instance_create(x,y,obj_player_bullet)
    dir = point_direction(x,y,mouse_x,mouse_y);
    var xforce = lengthdir_x(6, dir);
    var yforce = lengthdir_y(6, dir);
    p.creator = id;
    with (p){
        physics_apply_impulse(x,y, xforce, yforce);
       
    }
    audio_play_sound(sound_shoot,8,false);*/
    
}
else if (obj_input.gun_shot){
    count = 0;
    obj_cursor.sprite_index = spr_cursor;
    alarm[1] = -1;
    
        
}
else{
    //Get Direction
    dir = point_direction(0,0,obj_input.xaxis,obj_input.yaxis);

    //Get Length
    if (obj_input.xaxis == 0 and obj_input.yaxis ==0)
    {len=0;}
    else{
        len=spd;
        scr_getface();
        }
    if (obj_input.right or obj_input.left or obj_input.up or obj_input.down){
        script_execute(scr_movement);

    }
    
    //Control the sprite
    image_speed = sign(len)*.08;
    if (len==0) image_index = 0;


switch(face){
    case RIGHT:
        sprite_index = spr_player_right;
        break;
    
    case UP:
        sprite_index = spr_player_up;
        break;
        
    case LEFT:
        sprite_index = spr_player_left;
        break; 
        
    case DOWN:
        sprite_index = spr_player_down;
        break;
        }
      count=0; 

}


