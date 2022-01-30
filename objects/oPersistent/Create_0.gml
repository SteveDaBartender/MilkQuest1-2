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

rousr_dissonance_create(919686300548890635);
rousr_dissonance_set_details("In Menus");
rousr_dissonance_set_state("Choosing a Game");

audio_group_load(Music);
audio_group_load(SFX);