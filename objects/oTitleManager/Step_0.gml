/// @description Insert description here
// You can write your code in this editor
getInput();

if (key_space_press) {
	switch (cursorPos) {
		case 1:
			load_game_data();
			room_goto(rLevelSelect);
			audio_stop_all();
		break;
		case 6:
				global.character = oFezheadMQ2;
			global.spawnConehead = false;
			audio_stop_all()
			room_goto(rTitleSreenMQ2);
		break;
		case 7:
			game_end();
		break;
		default:
			audio_play_sound(sBreak,1,false);
		break;
	}
}
var oldCursorPos = cursorPos;
//moves the cursor up and down, 'cool' is the cooldown
if (key_up && cool > 5) {
	cursorPos = clamp(cursorPos-1,0,7);
	cool = 0;
}
if (key_ddown && cool > 5) {
	cursorPos = clamp(cursorPos+1,0,7);
	cool = 0;
}
if ( oldCursorPos != cursorPos) {
	audio_stop_sound(sMenuMove);
	audio_play_sound(sMenuMove,1,false);
}
//increment the cooldown
cool++;