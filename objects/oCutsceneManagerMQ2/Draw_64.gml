/// @description Insert description here
// You can write your code in this editor
draw_sprite(bg,0,0,-50);
if (char1anim = sConeheadCutsceneMQ2) {
	draw_sprite_ext(char1anim,char1Frame,190,265,-0.75,0.75,0,c_white,1);
} else draw_sprite(char1anim,char1Frame,100,235);
if (char2anim = sConeheadCutsceneMQ2) {
	draw_sprite_ext(char2anim,char2Frame,330,265,0.75,0.75,0,c_white,1);
} else draw_sprite_ext(char2anim,char2Frame,470,235,-1,1,0,c_white,1);
if (cut != 4) {
	draw_rectangle_color(0,435,540,540,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(0,435,540,540,c_blue,c_blue,c_blue,c_blue,true);
}
var newText = ctxt;
if (string_char_at(newText,0) == "ß") {
	newText = string_delete(newText,1,1)
	draw_set_font(fMQ2TextConehead);
} else {
	draw_set_font(fMQ2Text);	
}
draw_text_ext_color(30,440,newText,30,480,c_black,c_black,c_black,c_black,1);
draw_rectangle_color(541,0,9999,9999,c_black,c_black,c_black,c_black,false);