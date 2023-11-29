//used for transitions
transitionTime = 0;
transitionType = 0;
//sets follower character
npcFollower = 0;
getInput();

//can be 0-2 for which save slot will be used. (maybe i will add more in the future.)
saveSlot = 0;

//internal ID used to figure out what version of the saving algorithm is used.
//will rpobably be used to reset savefiles between updates.
saveVersion = 0.1;

if (os_browser = browser_not_a_browser) {
	show_debug_message("Enabling RPS")
	rousr_dissonance_create(919686300548890635);
	rousr_dissonance_set_details("In Menus");
	rousr_dissonance_set_state("Choosing a Game");
}

global.fezBestTime = 0;
global.coneBestTime = 0;

global.beatMQ1 = 0;
global.beatMQ2 = 0;

load_game_data();