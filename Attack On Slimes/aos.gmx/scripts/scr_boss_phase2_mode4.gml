var a = obj_orangeSlime;
var b = obj_redSlime;
var c = obj_slime;
slime = choose(a,b,c)
if object_exists(obj_player2){
    if (alarm[1] <=0){
        alarm[1] = room_speed * 3;
        instance_create(x,y,slime);
      }   
}  
