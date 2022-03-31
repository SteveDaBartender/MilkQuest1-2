/// @description Insert description here
// You can write your code in this editor
step++;
if (!audio_is_playing(sMenu) && audio_group_is_loaded(Music)) {
	audio_play_sound(sMenu,0,true);
}
if keyboard_check_pressed(vk_home) {
	global.cheats = true	
	audio_play_sound(sSuperSecretFullStorySoundEffectDONOTLEAK,0,false)
}
if ((keyboard_check_pressed(vk_anykey) || oPersistent.key_space_press) && !lock && step > 120) {
	oFade.state = 1;
	lock = true;
	oFade.destination = rMainMenu;
	audio_play_sound(sMenuStart,0,false);
}