global.volMus = 0.5;
global.volSFX = 0.5;
audio_group_set_gain(Music,global.volMus,0)
audio_group_set_gain(SFX,global.volSFX,0)
audio_group_load(Music);
audio_group_load(SFX);
//room_goto(rMainMenu);
global.character = oEndGoalMQ2;