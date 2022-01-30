global.spawnFollower = teammate;
global.milk = 0;
global.debug = false;
global.gameLock = false;
global.currentSong = sMenu;
getInput();
//go to a level based on the input
if (key_space_press) {
	oPersistent.npcFollower = 0;
	switch (cursorPos) {
		case 0:
			change_room(rMainMenu, 0, 0, true, char);
			break;
		case 1:
			change_room(rMilkQuest1, 0, 0, true, char);
			break;
		case 2:
			change_room(rTitleSreenMQ2, 0, 0, true, char);
			break;
		case 3:
			change_room(rSidewayValleyMQ2, 0, 0, true, char);
			break;
		case 4:
			change_room(rCuriousCarnivalMQ2, 0, 0, true, char);
			oPersistent.npcFollower = 4;
			break;
		case 5:
			change_room(rFutureSpaceMQ2, 0, 0, true, char);
			oPersistent.npcFollower = 4;
			break;
		case 6:
			change_room(oCutsceneManagerMQ2, 0, 0, true, char);
			break;
		case 7:
			change_room(rTest, 0, 0, true, char);
			break;
		case 31:
			change_room(rInputTest, 0, 0, true, oFezhead);
			break;
		default:
			audio_play_sound(sBreak, 1, false);
			break;
	}
}

//at some point, make these a switch statement 
if (key_down) {
	switch (char) {
		case oFezheadMQ2:
			char = oConeheadMQ2;
			break;
		case oConeheadMQ2:
			char = oFezhead;
			break;
		case oFezhead:
			char = oConehead;
			break;
		case oConehead:
			char = oKidhead;
			break;
		case oKidhead:
			char = oFezheadMQ2;
			break;
	}
}

//moves the cursor up and down, 'cool' is the cooldown
if (key_up && cool > 5) {
	cursorPos = clamp(cursorPos-1,0,8);
	cool = 0;
}
if (key_ddown && cool > 5) {
	cursorPos = clamp(cursorPos+1,0,8);
	cool = 0;
}
//increment the cooldown
cool++;

//changes teammate, or the character that follows you around
//may use this, may not.
if (keyboard_check_pressed(13)) {
	switch (teammate) {
		case "Fezhead":
			teammate = "Conehead";
			break;
		case "Conehead":
			teammate = "Kidhead";
			break;
		case "Kidhead":
			teammate = "None";
			break;
		case "None":
			teammate = "Fezhead";
			break;
	}
}