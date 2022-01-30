/// @description Insert description here
// You can write your code in this editor
draw_sprite(sGamePics,1,mq1X,loly);
draw_sprite(sGamePics,2,mq0X,loly);
draw_sprite(sGamePics,0,mq2X,loly);
draw_sprite(sSettings,0,setX,loly);
draw_text(5,5,"1:"+string(mq1X));
draw_text(5,15,"2:"+string(mq2X));
draw_text(5,25,"0:"+string(mq0X));
draw_text(5,35,"s:"+string(setX));
draw_text(5,55,"s:"+string(enablemq0));