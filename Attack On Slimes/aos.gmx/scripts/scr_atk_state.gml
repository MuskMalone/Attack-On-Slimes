/// scr_attack_state
image_speed = .08;
if (obj_player_stats.weapon == 0){
        var atkright = spr_player_atk_right;
         var atkleft =  spr_player_atk_left;
         var atkup =    spr_player_atk_up;
         var atkdown =  spr_player_atk_down;
         var audio = noone;
}
else if (obj_player_stats.weapon == 1){      
         var atkright = spr_bladeright;
         var atkleft =  spr_bladeleft;
         var atkup =    spr_bladeup;
         var atkdown =  spr_bladedown;
         var audio = slash4;
         }
else if (obj_player_stats.weapon == 2){      
         var atkright = spr_lb_right;
         var atkleft =  spr_lb_left;
         var atkup =    spr_lb_up;
         var atkdown =  spr_lb_down;
         var audio = lb;
         }

switch (sprite_index){
    case spr_player_right:
    sprite_index = atkright;
    break;
     case spr_player_down:
    sprite_index = atkdown;
    break;
     case spr_player_up:
    sprite_index = atkup;
    break;
     case spr_player_left:
    sprite_index = atkleft;
    break;
    case spr_ult_right:
    sprite_index = atkright;
    break;
     case spr_ult_down:
    sprite_index = atkdown;
    break;
     case spr_ult_up:
    sprite_index = atkup;
    break;
     case spr_ult_left:
    sprite_index = atkleft;
    break;
}

if ( image_index >=3 and attacked == false){
    var xx =0
    var yy =0
    switch (sprite_index){
  
         case atkdown:
            xx = x;
            yy = y+12;
            break;
            
         case  atkup:
            xx = x;
            yy = y-10;
            break;
            
         case atkright:
            xx = x+10;
            yy = y+2;
            break;
            
         case atkleft:
            xx = x-10;
            yy = y+2;
            break;
        
        }
    audio_play_sound(audio, 8, false);
    var damage = instance_create(xx, yy, obj_dmg);
    damage.creator = id;
    damage.dmg = obj_player_stats.meleedmg;
    attacked  = true;
}
    
 

