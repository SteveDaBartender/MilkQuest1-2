/// @description Insert description here
// You can write your code in this editor
/*
draw_text(5,25,string(count));
draw_text(5,45,string(cursorPos));
draw_text(5,65,string(screen));
*/
//STATE MACHINE ???
switch screen {
	case 0:
	draw_rectangle_color(81,0,458,400,c_white,c_white,c_white,c_white,false);
		draw_rectangle_color(81,400,458,540,c_black,c_black,c_black,c_black,false);
		draw_sprite(sPointerMQ1,0,(96*cursorPos+94),414)
		draw_sprite(sFezheadMQ1,0,90,220);
		draw_sprite_stretched(sLogoMQ1,0,110,10,356,195);
		break;
	case 1:
		draw_sprite(sHouseBG,0,80,0);
		draw_sprite(sFezheadMQ1,0,90,220);
		drawTextboxt();
		break;	
	case 2:
		draw_sprite(sVoidBG,0,80,0);
		draw_sprite(sFezheadMQ1,0,90,220)
		drawTextboxt();
		break;
	case 3:
		draw_sprite(sVoidBG,0,80,0);
		draw_sprite(sFezheadMQ1,0,90,220)
		draw_sprite(sKidMQ1,0,290,200)
		drawTextboxt();
		break;
	case 4:
		draw_sprite(sEndBG,0,80,0);
		break;
}

//33m25s98