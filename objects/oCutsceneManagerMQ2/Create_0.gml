/// @description Insert description here
// You can write your code in this editor

cut = global.cutsceneID; //value of cutscene
ctxt = ""; //text to be shown
step = 1; //which part of the cutscene to show
char1anim = sFezheadCutsceneMQ2
char1Frame = 0;
char2anim = sNone;
char2Frame = 0;
bg = sSidewayValleyBgMQ2;
playedSong = false;
draw_set_font(fMQ2Text);
audio_stop_all();