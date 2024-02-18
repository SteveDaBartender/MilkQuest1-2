//This sets the music for the room.
//audio_stop_all();
/*
if (room = rTowerEntrance) {
	layer_shader("TilesGrass",fxTowerWind);
	layer_script_begin("TilesGrass",tower_update_grass);
	shader_set_uniform_f(shader_get_uniform(fxTowerWind, "Time"),global.globalTimer/1000);
}
*/

switch (room){
	case rSidewayValleyMQ2:
		audio_stop_all()
		//rousr_dissonance_set_details("Playing Milk Quest 2");
		if (global.character != oConeheadMQ2) {
			audio_play_sound(sSidewayValleyMQ2Song, 0, true);
			global.currentSong = sSidewayValleyMQ2Song;
			//rousr_dissonance_set_state("Sideway Valley (Fezhead)");
		} else {
			audio_play_sound(sSidewayValleyMQ2SongConehead, 0, true);
			global.currentSong = sSidewayValleyMQ2SongConehead;
			//rousr_dissonance_set_state("Sideway Valley (Conehead)");
		}
		lock = true;
	break;

	case rFutureSpaceMQ2:
		audio_stop_all()
		//rousr_dissonance_set_details("Playing Milk Quest 2");
		if (global.character != oConeheadMQ2) {
			audio_play_sound(sFutureSpaceMQ2Song, 0, true);
			global.currentSong = sFutureSpaceMQ2Song;
			//rousr_dissonance_set_state("Future Space (Fezhead)");
		} else {
			//rousr_dissonance_set_state("Future Space (Conehead)");
			audio_play_sound(sFutureSpaceMQ2SongConehead, 0, true);
			global.currentSong = sFutureSpaceMQ2SongConehead;
		}
		lock = true;
	break;
	case rTitleSreenMQ2:
		audio_play_sound(sTitleScreenMQ2, 0, false);
		global.currentSong = sTitleScreenMQ2;
		lock = true;
	break;
	case rLevelSelect:
		audio_play_sound(sMenu, 0, true);
		global.currentSong = sMenu;
	break;
	case rCuriousCarnivalMQ2:
		audio_stop_all()
		//rousr_dissonance_set_details("Playing Milk Quest 2");
		if (global.character = oConeheadMQ2) {
			audio_play_sound(sNewSongMQ2Song, 0, true);
			global.currentSong = sNewSongMQ2Song;
			//rousr_dissonance_set_state("Curious Carnival (Conehead)");
		} else {
			audio_play_sound(sCuriousCarnivalMQ2Song, 0, true);
			global.currentSong = sCuriousCarnivalMQ2Song;
			//rousr_dissonance_set_state("Curious Carnival (Fezhead)");
		}
	break;
}