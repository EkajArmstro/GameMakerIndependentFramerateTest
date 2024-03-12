/// @description Step

if (step) {
	
xprev = x;
yprev = y;

var wishx = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var wishy = keyboard_check(ord("S")) - keyboard_check(ord("W"));
if (wishx != 0 || wishy != 0) {
	var wishdir = point_direction(0, 0, wishx, wishy);
	var spd = 20;
	
	x += lengthdir_x(spd, wishdir);
	y += lengthdir_y(spd, wishdir);
}
	
}