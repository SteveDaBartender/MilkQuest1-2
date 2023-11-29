///@param saveslot
function save_game_data(argument0){
	ini_open("mq12save.ini");
	
	show_debug_message("saved game!");
	
	//write save version & game version
	ini_write_real("saveinfo","saveversion",oPersistent.saveVersion)
	ini_write_real("saveinfo","gameversion",GM_version)
	
	//write game-specific info to file
	ini_write_real("progress","mq1beat",global.beatMQ1);
	ini_write_real("progress","mq2beat",global.beatMQ2);
	ini_write_real("progress","mq2bestfez",global.fezBestTime);
	ini_write_real("progress","mq2bestcone",global.coneBestTime);
	
	ini_write_real("settings","fullscreen",window_get_fullscreen());
	ini_write_real("settings","volMus",global.volMus);
	ini_write_real("settings","volSFX",global.volSFX);
	
	ini_close();
}

