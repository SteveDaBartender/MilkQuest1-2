/// @description Insert description here
// You can write your code in this editor
enablemq0 = false;

cursorPos = 0;
moveDir = 0;
if (enablemq0) {
	mq0X = -270;
	mq1X = 270;
	mq2X = 810;
	setX = 1350;
} else {
	mq0X = 999999999;
	mq1X = 270;
	mq2X = 810;
	setX = 1350;
}
step = 0;
loly = 300;
lock = false;
rousr_dissonance_set_details("In Menus");
rousr_dissonance_set_state("Choosing a Game");
rousr_dissonance_set_large_image("menu","glup shitto");
while (!audio_group_is_loaded(Music)) {
	show_debug_message("Music has not loaded yet! Waiting...")	
}
show_debug_message("Music is loaded! Starting game select...)")	
audio_play_sound(sMenu, 0, true);