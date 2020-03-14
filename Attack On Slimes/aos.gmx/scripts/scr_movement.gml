var xa = 0;
var ya = 0;
var mdir = 0;
if (obj_input.right)
{xa = 1;}
 if (obj_input.left)
{xa = -1;}
if (obj_input.down)
{ya = 1;}
 if (obj_input.up)
{ya = -1;}

mdir = point_direction(0,0,xa,ya);
hspd = lengthdir_x(len,mdir);
vspd = lengthdir_y(len,mdir);

//Move
phy_position_x += hspd/7;
phy_position_y += vspd/7;

