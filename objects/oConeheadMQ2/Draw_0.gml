/// @description Insert description here
// You can write your code in this editor
//
if (abs(hsp)>10) draw_sprite_ext(sprite_index,image_index,x-(hsp),y-(vsp),image_xscale,1,0,c_white,abs(sin(global.globalTimer/3.5))/4+0.25)
draw_self();