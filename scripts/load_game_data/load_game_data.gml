///@param saveslot
function load_game_data(argument0){
	ini_open("mq12save.ini");
	
		//write game-specific info to file
	global.beatMQ1 = ini_read_real("progress","mq1beat",0);
	global.beatMQ2 = ini_read_real("progress","mq2beat",0);
	global.fezBestTime =  ini_read_real("progress","mq2bestfez",0);
	global.coneBestTime =ini_read_real("progress","mq2bestcone",0);
	
	window_set_fullscreen(ini_read_real("settings","fullscreen",0));
	global.volMus = ini_read_real("settings","volMus",0.5);
	global.volSFX = ini_read_real("settings","volSFX",0.5);
	
	show_debug_message("loaded game!");
	ini_close();
}