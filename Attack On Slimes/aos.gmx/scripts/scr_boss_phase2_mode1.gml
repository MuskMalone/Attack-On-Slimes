//phase 2
/// start timer
if (object_exists(obj_player2)){
    if (alarm[1] <=0){
        alarm[1] = room_speed;
        instance_create(x,y,obj_purple_projectile_homing);
      }   
}     
