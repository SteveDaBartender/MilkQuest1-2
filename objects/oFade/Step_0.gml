/// @description Insert description here
// You can write your code in this editor
switch state {
	case -1:
	 image_alpha -= spd;
	 if (image_alpha < 0) state = 2;
	 break;
	case 0:
		break;
	case 1:
	 image_alpha += spd;
	 audio_sound_gain(sMenu,0,1000);
	 if (image_alpha > 1) state = 2;
	 break;
	 case 2:
		if (destination != "none")room_goto(destination);
		state = 0;
		break;
}