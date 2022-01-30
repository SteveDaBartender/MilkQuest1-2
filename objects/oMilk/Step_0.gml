if ((place_meeting(x,y,oPlayer) || global.milkGrabMode = true) && !collected){
	global.milk++;
	audio_play_sound(sMilk,1,false);
	collected = true;
	if (global.character.hsp > 0) {
		spd = 6;
	} else {
		spd = -6;
	}
	angle = 90;
	if (sign(global.character.hsp) = -1)  angle = 180;
	x = x + lengthdir_x(20,angle);
	y = y + lengthdir_y(20,angle);
} 
if (collected) {
	x += spd;
	//set the angle so that it will gradtually turn towards hud

	//make me small again 
	if (image_yscale < 0.15) {
		image_yscale -= 0.005;
		image_xscale -= 0.005;
	}
}
