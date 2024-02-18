
getInput()
/*Imagine that the castle Mario walks into at the end of each stage is a bus station, 
and that Mario must take a bus to the next stage. In the Mushroom Kingdom, buses 
operate on an oddly specific schedule, such that every 21 frames a bus departs. 
When Mario reaches the end of a stage, he must wait for the next bus to depart.*/
if (key_up && cool > 21) {
	cursorPos = clamp(cursorPos-1,0,5);
	cool = 0;
	//spaghetti fix because i am too lazy rn to make a actual patch :)
	if (cursorPos == 4 && gameVer != browser_not_a_browser) {
		cursorPos = 3	
	}
}
if (key_ddown && cool > 21) {
	cursorPos = clamp(cursorPos+1,0,5);
	cool = 0;
	if (cursorPos == 4 && gameVer != browser_not_a_browser) {
		cursorPos = 5	
	}
}
//increment the cooldown
cool++;

//this is in step for debug reasons :)
//gameVer = os_browser;
//gameVer = browser_not_a_browser;

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
			audio_sound_gain(currentlyPlaying,0,500);
			oFade.destination = rMainMenu;
			save_game_data();
		}
		break;
	case 1:
		goalX1=16
		goalX2=272
		goalY1=108
		goalY2=154
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
		goalY1=148
		goalY2=194
		if (key_right) {
			global.volSFX = (clamp(global.volSFX+0.02,0,1))
		} else if (key_left) {
			global.volSFX = (clamp(global.volSFX-0.02,0,1))	
		}
		audio_group_set_gain(SFX,global.volSFX,0)
		break;
	case 3:
		goalX1=16
		goalX2=272
		goalY2=218
		goalY1=190
		if (key_space_press) {
			oFade.state = 1;
			//audio_sound_gain(currentlyPlaying,0,500);
			oFade.destination = rMainMenu;
			//save_game_data();
		}
		break;
	case 4:
		goalX1=16
		goalX2=272
		goalY2=250
		goalY1=220
		if (gameVer = browser_not_a_browser) {
			if (key_space_press) {
				if (window_get_fullscreen()) {
					window_set_fullscreen(false);
				}else {
					window_set_fullscreen(true);
				}
			}
		} else {
			
		}
		break;
	case 5:
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
			currentlyPlaying = audio_play_sound(songList[songId,0],0,true);
	
		}
		break;
}
/// @description Insert description here
// You can write your code in this editor

rotationStep = 3.3*pitch;
image_angle += rotationStep;