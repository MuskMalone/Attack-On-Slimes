if (instance_exists(obj_player2)){
    if (shotcounter ==0){
        phy_position_x += sign(obj_player2.x - x)*hspd;
        phy_position_y += sign(obj_player2.y - y)*vspd;
         var dir = point_direction(x,y,x,y+1);
        
        var ldx1 = lengthdir_x(3,dir);
        var ldy1 = lengthdir_y(3,dir);
        var bullet1 = instance_create(x,y,obj_orange_projectile);
        
        var ldx2 = lengthdir_x(3,dir + 180);
        var ldy2 = lengthdir_y(3,dir + 180);
        var bullet2 = instance_create(x,y,obj_orange_projectile);       
        
        bullet1.creator = id;
        with (bullet1){
            physics_apply_impulse(x,y,ldx1,ldy1);
        }
        
        bullet2.creator = id;
        with (bullet2){
            physics_apply_impulse(x,y,ldx2,ldy2);
        }
        shotcounter+=1;
    }
    else if (shotcounter >0 and stepcounter ==0)
    {
        stepcounter =1;
        alarm[2] = (shotcounter*room_speed*0.2);
    }
           
      
    }
