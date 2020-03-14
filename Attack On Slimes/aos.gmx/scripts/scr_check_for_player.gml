/// scr_check_for_player()
if (instance_exists(obj_player2)){
    var dis = point_distance(x,y,obj_player2.x,obj_player2.y);
    if (dis < sight){
        state = scr_enemy_chase_state;
        targetx = obj_player2.x;
        targety = obj_player2.y;
        }
    else{
        state= scr_enemy_wander_state;
        }
 }
 else{
  state= scr_enemy_wander_state;
        }
