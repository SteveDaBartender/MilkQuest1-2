if live_call() return live_result;
getInput()
/*Imagine that the castle Mario walks into at the end of each stage is a bus station, 
and that Mario must take a bus to the next stage. In the Mushroom Kingdom, buses 
operate on an oddly specific schedule, such that every 21 frames a bus departs. 
When Mario reaches the end of a stage, he must wait for the next bus to depart.*/
if (key_up && cool > 21) {
	cursorPos = clamp(cursorPos-1,0,3);
	cool = 0;
}
if (key_ddown && cool > 21) {
	cursorPos = clamp(cursorPos+1,0,3);
	cool = 0;
}
//increment the cooldown
cool++;

selX1 = selX1 + (goalX1-selX1)/10;
selX2 = selX2 + (goalX2-selX2)/10;
selY1 = selY1 + (goalY1-selY1)/10;
selY2 = selY2 + (goalY2-selY2)/10;

switch (cursorPos) {
	case 0:
		goalX1=16
		goalX2=128
		goalY1=10
		goalY2=50
		if (key_space_press) {
			oFade.state = 1;
			oFade.destination = rMainMenu;
		}
		break;
	case 1:
		goalX1=16
		goalX2=272
		goalY1=118
		goalY2=160
		if (key_right) {
			global.volMus = (clamp(global.volMus+0.02,0,1))
		} else if (key_left) {
			global.volMus = (clamp(global.volMus-0.02,0,1))	
		}
		audio_group_set_gain(Music,global.volMus,0)
		break;
	case 2:
		goalX1=16
		goalX2=272
		goalY1=158
		goalY2=200
		if (key_right) {
			global.volSFX = (clamp(global.volSFX+0.02,0,1))
		} else if (key_left) {
			global.volSFX = (clamp(global.volSFX-0.02,0,1))	
		}
		audio_group_set_gain(SFX,global.volSFX,0)
		break;
	case 3:
		goalX1=304
		goalX2=528
		goalY1=240
		goalY2=529
		if (oPersistent.key_right && lol > 10 && songId+1 <= array_length(songList)-1) {
			songId++;
			lol = 0;	
		}
		if (oPersistent.key_left && lol > 10 && songId-1 >= 0) {
			songId--;
			lol = 0;	
		}
		lol++;
		if (oPersistent.key_space_press) {
			audio_stop_all();
			currentlyPlaying = audio_play_sound(songList[songId,0],0,false);
	
		}
		break;
}
/// @description Insert description here
// You can write your code in this editor

rotationStep = 3.3*pitch;
image_angle += rotationStep;