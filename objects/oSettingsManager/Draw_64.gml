if live_call() return live_result;
//set colors
draw_set_alpha(0.6);
draw_set_color(c_black);
	
//back "button"
draw_roundrect(16,10,128,50,false);
//settings
draw_roundrect(16,70,272,208,false);

//credits
draw_set_font(fTitleScreen);
draw_roundrect(16,240,272,528,false);	
//music
draw_roundrect(304,240,528,528,false);	

//the new normal
draw_set_alpha(1);	
draw_set_color(c_white);
draw_text_transformed(30,17,"Return",0.6,0.6,0);
//credtis text
draw_text_transformed(30,250,"Credits",1,1,0);
draw_text_transformed(30,290,"Programming",0.5,0.5,0);
draw_text_transformed(30,310,"Steve the Bartender",0.33,0.33,0);
draw_text_transformed(30,330,"Music",0.55,0.5,0);
draw_text_transformed(30,350,"Steve the Bartender (Milk Quest 1)",0.33,0.33,0);
draw_text_transformed(30,365,"Varadox (Milk Quest 2)",0.33,0.33,0);
draw_text_transformed(30,380,"Quackers T. Encheese (Menu)",0.33,0.33,0);
draw_text_transformed(30,400,"Planning & Testing",0.5,0.5,0);
draw_text_transformed(30,420,"Steve the Bartender",0.33,0.33,0);
draw_text_transformed(30,435,"Quackers T. Encheese",0.33,0.33,0);
draw_text_transformed(30,455,"Special Thanks",0.5,0.5,0);
draw_text_transformed(30,475,"rou.sr (Discord Rich Presence)",0.33,0.33,0);
draw_text_transformed(30,490,"GMLive",0.33,0.33,0);
draw_text_transformed(30,510,"Version: " + string(GM_version),0.33,0.33,0);

//volume meters
draw_text_transformed(30,80,"Volume",1,1,0);
draw_text_transformed(30,120,"Music",0.5,0.5,0);
draw_text_transformed(30,160,"Sound Effects",0.5,0.5,0);
draw_set_alpha(0.4);
draw_set_color(c_black)
draw_roundrect(32,140,256,150,false); //bg
draw_roundrect(32,180,256,190,false); //bg
draw_set_color(c_white)
draw_set_alpha(0.9);
draw_roundrect_color(32,140,32 + (228*global.volMus),150,c_white,c_gray,false); //actual bar
draw_roundrect_color(32,180,32 + (228*global.volSFX),190,c_white,c_gray,false); //actual
draw_set_alpha(1);

//spinny record
draw_text_transformed(314,250,"Sound Test",1,1,0);
draw_sprite_ext(sRecordSettings,0,417,392,0.9,0.9,image_angle,c_white,1);
draw_set_halign(fa_center);
draw_text_transformed(416,500,string(songList[songId,1]),0.33,0.33,0);
draw_set_halign(fa_left);

//selection box
draw_set_alpha(0.5)
var off = 0
repeat 20{
	off += 0.1
	draw_roundrect(selX1+off,selY1+off,selX2-off,selY2-off,true)
	draw_set_alpha(1-off/2)
}
draw_set_alpha(1);
draw_roundrect(selX1,selY1,selX2,selY2,true)
//debug vals
draw_text_transformed(5,5,string(cursorPos),0.33,0.33,0);