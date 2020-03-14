// script for projectiles
var dir = point_direction(x,y,obj_player2.x,obj_player2.y);
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
image_xscale = sign(hspd);
phy_position_x += hspd;
phy_position_y += vspd;
