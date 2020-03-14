///script get input
right = keyboard_check(ord("D"));
left =keyboard_check(ord("A"));
up =keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
pause = keyboard_check_pressed(vk_escape);
dash = keyboard_check_pressed(vk_space);
atk = mouse_check_button_pressed(mb_right);
ultimate = keyboard_check_pressed(ord("Q"));
select = keyboard_check_pressed(ord("E"));
gun_shoot = mouse_check_button_pressed(mb_left);
gun_shot = mouse_check_button_released(mb_left);
die = keyboard_check_pressed(ord("H"));
killboss = keyboard_check_pressed(ord("B"));
opendoor = keyboard_check_pressed(ord("Y"));
if (count ==0)
{
    xaxis = (right - left);
    yaxis = (down - up);
}

