//oh god super ugly drawing text oh god
var selectorSprite = sMiscSelecter;;

draw_set_font(fLevelSelect);
draw_set_color(validColor);
draw_text(lvlOffsetR1,5,"00 - Game Select");
draw_text(lvlOffsetR1,25,"01 - Milk Quest 1");
draw_text(lvlOffsetR1,45,"02 - MQ2 Title Screen");
draw_text(lvlOffsetR1,65,"03 - Sideway Valley"); //dm
draw_text(lvlOffsetR1,85,"04 - Curious Carnival");
draw_text(lvlOffsetR1,105,"05 - Future Space");
draw_text(lvlOffsetR1,125,"06 - Cutscene"); //sc
draw_text(lvlOffsetR1,145,"07 - Credits"); //sweet caps
draw_text(lvlOffsetR1,165,"08 - Test Level"); //sc
draw_set_color(validColor);

switch (char) {
	case oFezheadMQ2:
		selectorSprite = sFezSelecter;
		draw_text(lvlOffsetR1,385, "Character: Fezhead");
		break;
	case oConeheadMQ2:
		selectorSprite = sConeSelecter;
		draw_text(lvlOffsetR1,385, "Character: Conehead");
		break;
	case oFezhead:
		selectorSprite = sMiscSelecter;
		draw_text(lvlOffsetR1,385, "Character: MQ3 Fezhead");
		break;
	case oKidhead:
		selectorSprite = sMiscSelecter;
		draw_text(lvlOffsetR1,385, "Character: MQ3 Kid");
		break;
	case oConehead:
		selectorSprite = sMiscSelecter;
		draw_text(lvlOffsetR1,385, "Character: MQ3 Conehead");
		break;
	default: 
		selectorSprite = sMiscSelecter;
		draw_text(lvlOffsetR1,385, "Character: Unknown");
		break;
}


draw_text(lvlOffsetR1,405, "Key ID:" + string(keyboard_key));
draw_text(lvlOffsetR1,425, "Cursor ID:" + string(cursorPos));

draw_text(210,5,"Milk Quest 1+2 - Unnecessary Level Select");
draw_text(210,25,"Build Date:  " + date_date_string(GM_build_date) + "  " +date_time_string(GM_build_date));
draw_text(210,45,"Internal Version: " + string(GM_version));
draw_text(210,65,"Contact: milkquestgame@gmail.com");

draw_text(lvlOffsetR1,445,"Level Select Commands");
draw_text(lvlOffsetR1,465,"X: Change Starting Character");
draw_text(lvlOffsetR1,485,"Up/Down: Move Cursor");
draw_text(lvlOffsetR1,505,"Z: Select A Stage");
//draw_text(480,480,"Typing Stage ID and pressing\nZ also works.");   it doesnt yet lol

draw_text(260,380,"Debug Commands (In-Game)");
draw_text(260,400,"F1: Return to Level Select");
draw_text(260,420,"F2: Show Collision");
draw_text(260,440,"F3: Debug Information");
draw_text(260,460,"F4: Fullscreen Toggle");
draw_text(260,480,"Numpad 4,5,7,8,9: Change Character");
draw_text(260,500,"WASD w/ F3: Noclip Move");
draw_text(260,520,"Esc: Quit Game.");

if (cursorPos <= 15) {
	draw_sprite(selectorSprite, cursorPos ,lvlOffsetR1-40,(cursorPos*20)-10)	
}
if (cursorPos > 15 && cursorPos <= 32) {
	draw_sprite(selectorSprite, cursorPos ,lvlOffsetR2-40,((cursorPos - 16)*20-10))	
}

//credits will be moved to their own section soon.

/*
draw_text(lvlOffsetR1,420,"Credits");
draw_text(lvlOffsetR1,440,"Code, Artwork, Design: Steve the Bartender");
draw_text(lvlOffsetR1,460,"Music & Design: Quackers T. Encheese");
draw_text(lvlOffsetR1,480,"Factory & Sky Tracks: dragon98999");
draw_text(lvlOffsetR1,500,"helped with like 1 song idr which one: Turretbot");
draw_text(lvlOffsetR1,520,"Special Thanks: sup3p, FANTIC, James Cleland, Birb, Axelcuty, Doodle");

TO ADD TO CREDITS:
CRT SHADER: https://marketplace.yoyogames.com/assets/701/crt-pixel-shader

add credits to aseprite/SFXR ?
*/



