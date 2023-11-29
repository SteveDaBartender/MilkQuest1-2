// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_game_data(){
	ini_open("mq12save.ini");
	
	show_debug_message("saved game!");
	
	//write save version & game version
	ini_write_real("saveinfo","saveversion",oPersistent.saveVersion)
	ini_write_real("saveinfo","gameversion",GM_version)
	
	//write game-specific info to file
	ini_write_real("progress","mq1beat",0);
	ini_write_real("progress","mq2beat",0);
	ini_write_real("progress","mq2bestfez",0);
	ini_write_real("progress","mq2bestcone",0);
	
	ini_write_real("settings","fullscreen",0);
	ini_write_real("settings","volMus",0);
	ini_write_real("settings","volSFX",0);
	
	ini_close();
}