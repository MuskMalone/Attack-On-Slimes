// choose next mode
if (hp <=  3000 && hp > 1500){
    randomize();
    state = choose(scr_boss_phase1_mode2,scr_boss_phase1_mode1,scr_boss_phase1_mode3);
    alarm[1] =0;
    alarm[2] = -1;
    shotcount =1;
    stepchecker =0;
}
else if (hp <= 1500){
    randomize();
    state = choose(scr_boss_phase2_mode2,scr_boss_phase2_mode1,scr_boss_phase2_mode3);
    alarm[1] =0;
    alarm[2] = -1;
    alarm[3] = -1;
    alarm[4] = -1;
    shotcount =1;
    stepchecker =0;
}




