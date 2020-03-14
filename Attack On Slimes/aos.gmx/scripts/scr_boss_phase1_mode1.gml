//phase 1
/// start timer
if (object_exists(obj_player2)){
if (alarm[1] <=0){
    alarm[1] = room_speed;
 var dir = point_direction(x,y,obj_player2.x,obj_player2.y);
 var ldx = lengthdir_x(20,dir);
 var ldy = lengthdir_y(20,dir);
 var bullet = instance_create(x,y,obj_blue_projectile);
 bullet.creator = id;
 with (bullet){
     physics_apply_impulse(x,y,ldx,ldy);
  }
  }
  
    
}      
