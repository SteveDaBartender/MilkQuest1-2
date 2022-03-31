/// @description Insert description here
// You can write your code in this editor
if (hsp > 10) draw_sprite_ext(sprite_index,image_index,x-hsp,y-vsp,1,1,0,c_white,sin(global.globalTimer))
if (!npc) draw_sprite(sConeHUD,round(clamp(abs(hsp),0,11)),0,0);