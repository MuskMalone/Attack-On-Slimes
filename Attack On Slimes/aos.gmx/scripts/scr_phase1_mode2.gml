if (instance_exists(obj_player2)){
if (alarm[1] <= 0){
        /// start timer
        
            alarm[1] = room_speed*2;
            var dir = point_direction(x,y,x+1,y);
            
            var ldx1 = lengthdir_x(5,dir);
            var ldy1 = lengthdir_y(5,dir);
            var bullet1 = instance_create(x,y,obj_red_projectile);
            
            var ldx2 = lengthdir_x(5,dir + 45);
            var ldy2 = lengthdir_y(5,dir + 45);
            var bullet2 = instance_create(x,y,obj_red_projectile);
            
            var ldx3 = lengthdir_x(5,dir + 90);
            var ldy3 = lengthdir_y(5,dir + 90);
            var bullet3 = instance_create(x,y,obj_red_projectile);
            
            var ldx4 = lengthdir_x(5,dir + 135);
            var ldy4 = lengthdir_y(5,dir + 135);
            var bullet4 = instance_create(x,y,obj_red_projectile);
            
            var ldx5 = lengthdir_x(5,dir + 180);
            var ldy5 = lengthdir_y(5,dir + 180);
            var bullet5 = instance_create(x,y,obj_red_projectile);
            
            var ldx6 = lengthdir_x(5,dir + 225);
            var ldy6 = lengthdir_y(5,dir + 225);
            var bullet6 = instance_create(x,y,obj_red_projectile);
            
            var ldx7 = lengthdir_x(5,dir + 270);
            var ldy7 = lengthdir_y(5,dir + 270);
            var bullet7 = instance_create(x,y,obj_red_projectile);
            
            var ldx8 = lengthdir_x(5,dir + 315);
            var ldy8 = lengthdir_y(5,dir + 315);
            var bullet8 = instance_create(x,y,obj_red_projectile);
            
            bullet1.creator = id;
            with (bullet1){
                physics_apply_impulse(x,y,ldx1,ldy1);
            }
            
            bullet2.creator = id;
            with (bullet2){
                physics_apply_impulse(x,y,ldx2,ldy2);
            }
            
            bullet3.creator = id;
            with (bullet3){
                physics_apply_impulse(x,y,ldx3,ldy3);
            }
            
            bullet4.creator = id;
            with (bullet4){
                physics_apply_impulse(x,y,ldx4,ldy4);
            }
            
            bullet5.creator = id;
            with (bullet5){
                physics_apply_impulse(x,y,ldx5,ldy5);
            }
            
            bullet6.creator = id;
            with (bullet6){
                physics_apply_impulse(x,y,ldx6,ldy6);
            }
            
            bullet7.creator = id;
            with (bullet7){
                physics_apply_impulse(x,y,ldx7,ldy7);
            }
            
            bullet8.creator = id;
            with (bullet8){
                physics_apply_impulse(x,y,ldx8,ldy8);
            }
            
        }  
    }
