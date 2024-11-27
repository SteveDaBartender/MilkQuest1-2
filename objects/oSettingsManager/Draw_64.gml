
//set colors
draw_set_alpha(0.6);
draw_set_color(c_black);
	
//back "button"
draw_roundrect(16,10,128,50,false);
//settings
draw_roundrect(16,60,272,248,false);

//credits
draw_set_font(fTitleScreen);
draw_roundrect(16,250,272,528,false);	
//music
draw_roundrect(304,250,528,528,false);	

//the new normal
draw_set_alpha(1);	
draw_set_color(c_white);
draw_text_transformed(30,17,"Return",0.6,0.6,0);
//credtis text
draw_text_transformed(30,260,"Credits",1,1,0);
draw_text_transformed(30,300,"Programming",0.5,0.5,0);
draw_text_transformed(30,320,"Steve the Bartender",0.33,0.33,0);
draw_text_transformed(30,340,"Music",0.55,0.5,0);
draw_text_transformed(30,360,"Steve the Bartender (Milk Quest 1)",0.33,0.33,0);
draw_text_transformed(30,375,"Varadox (Milk Quest 2)",0.33,0.33,0);
draw_text_transformed(30,390,"Quackers (Menu)",0.33,0.33,0);
draw_text_transformed(30,410,"Planning & Testing",0.5,0.5,0);
draw_text_transformed(30,430,"Steve the Bartender",0.33,0.33,0);
draw_text_transformed(30,445,"Quackers",0.33,0.33,0);
draw_text_transformed(30,465,"Special Thanks",0.5,0.5,0);
//draw_text_transformed(30,475,"NekoPresence",0.33,0.33,0);
draw_text_transformed(30,485,"GMLive",0.33,0.33,0);
draw_text_transformed(30,510,"v" + string(GM_version),0.33,0.33,0);
draw_text_transformed(90,510,"milkquestgame@gmail.com",0.33,0.33,0);
//volume meters
draw_text_transformed(30,70,"Volume",1,1,0);
draw_text_transformed(30,110,"Music",0.5,0.5,0);
draw_text_transformed(30,150,"Sound Effects",0.5,0.5,0);
//draw_text_transformed(30,193,"Controls",0.5,0.5,0);
var hehehe = 20;
if (gameVer = browser_not_a_browser) {
	draw_text_transformed(30,203+hehehe,"Fullscreen",0.5,0.5,0);
	draw_roundrect(240,205+hehehe,260,225+hehehe,true)
	var colors = make_color_rgb(121,161,190)
	if (window_get_fullscreen()) draw_roundrect_color(260,205+hehehe,240,225+hehehe,colors,colors,false)
	draw_set_alpha(0.4);
	draw_roundrect(240.5,224.5+hehehe,259.5,205.5+hehehe,true)
	draw_roundrect(239.5,225.5+hehehe,260.5,204.5+hehehe,true)
	draw_set_alpha(1);
}
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
var width = (string_width(string(songList[songId,1]))*0.33)+30
var thesin = sin(global.globalTimer/100)*3
draw_set_halign(fa_center);
var alpha = sin(global.globalTimer/60)+1.2
draw_sprite_ext(sSettingsArrow,0,416+width/2+thesin,507,1,1,0,c_white,alpha)
draw_sprite_ext(sSettingsArrow,0,416-width/2-thesin,507,-1,1,0,c_white,alpha)
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
//draw_text_transformed(5,5,string(cursorPos),0.33,0.33,0);