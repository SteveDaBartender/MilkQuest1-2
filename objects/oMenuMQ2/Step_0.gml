if live_call() return live_result;
//MARIO JOKE GOES HERE
getInput()
if (key_left && cool > 21) {
	cursorPos = clamp(cursorPos-1,0,4);
	cool = 0;
}
if (key_up && cool > 21) {
	cursorPos = 0;
	cool = 0;
}
if ((key_ddown || key_right) && cool > 21) {
	cursorPos = clamp(cursorPos+1,0,4);
	cool = 0;
}
//increment the cooldown
cool++;
selX1 = selX1 + (goalX1-selX1)/10;
selX2 = selX2 + (goalX2-selX2)/10;
selY1 = selY1 + (goalY1-selY1)/10;
selY2 = selY2 + (goalY2-selY2)/10;

switch cursorPos {
	case 0:
		goalX1=225;
		goalX2=323;
		goalY1=546;
		goalY2=590;
		if (key_space_press) {
			oFade.state = 1;
			audio_sound_gain(sTitleScreenMQ2,0,800)
			audio_stop_sound(sMenu)
			oFade.destination = rMainMenu;
		}
		break;
	case 1:
		goalX1=278;
		goalX2=360;
		goalY1=926.5;
		goalY2=1028.1;
		if (key_space_press) {
		global.cutsceneID = 1
		change_room(rCutsceneMQ2,0,0,true,global.character);
		}
		break;
	case 2:
		goalX1=382;
		goalX2=464;
		goalY1=926.5;
		goalY2=1028.1;
		if (key_space_press) {
		global.cutsceneID = 2
		change_room(rCutsceneMQ2,0,0,true,global.character);
		}
		break;
	case 3:
		goalX1=491;
		goalX2=573;
		goalY1=926.5;
		goalY2=1028.1;
		if (key_space_press) {
		global.cutsceneID = 3
		change_room(rCutsceneMQ2,0,0,true,global.character);
		}
		break;
	case 4:
		goalX1=606;
		goalX2=688;
		goalY1=926.5;
		goalY2=1028.1;
		if (key_space_press) {
			if (global.character = oFezheadMQ2) {
				oCharacterSelectMQ2.animState = 1;
				global.character = oConeheadMQ2
			} else if (global.character = oConeheadMQ2) {
				oCharacterSelectMQ2.animState = 2;
				global.character = oFezheadMQ2
			}
		}
		break;
}