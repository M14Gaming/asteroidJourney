/*
Usage: force(obj,energy,direction)
direction is in degrees
*/
/// @function                  force(obj,energy,direction)
/// @param  {obj}  obj		   the object being bounced.
/// @param  {real}  energy     The amount of force to apply
/// @param  {real}  direction  The direction which obj will be pushed
/// @description    Handles bounce when 2 objects collide
function Bounce(obj, energy, dir)
{
	var objx,objy,forcx,forcy,rx,ry,cspeed;
	cspeed=argument0.speed;
	objx=cos(degtorad(argument0.direction))*cspeed;
	objy=sin(degtorad(argument0.direction))*cspeed;
	forcx=cos(degtorad(argument2))*argument1;
	forcy=sin(degtorad(argument2))*argument1;
	rx=forcx+objx;
	ry=forcy+objy;
	argument0.direction=radtodeg(arctan2(ry,rx));
	argument0.speed=sqrt(sqr(ry)+sqr(rx));
}