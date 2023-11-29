/// @description Insert description here
// You can write your code in this editor
draw_sprite(sTitleScreenBG2MQ2,0,x,backgroundY)
draw_sprite(sTitleScreenBG1MQ2,0,x,foregroundY)
draw_sprite(sprite_index,image_index,x,y)
draw_sprite(sMQ2Logo,0,x+90,y-230)	/*
Raven  |        |
       |        |
       |        |
       |     _ _,    .---------------.
       |    (.).)   |                 |
       |    .-^--_  | EAT MY SHORTS ! |
       \   ' _____) |                 |
        | \ (__    /_-----------------'
       /   -__/
      /       \
     / /   .   |
    / /    /   |
    / \   /    '
   /   \ /    /
  /     .    /
 / /  X     /
/ /  / |--| |____
\/\_/  |--|   ----.
      /   |\ \----'
     / /| | \ \
    `_/_|_.  `-
	*/

draw_text_transformed_color(x,y,string(global.fezBestTime),1,1,0,c_black,c_black,c_black,c_black,1);
draw_text_transformed_color(x,y+10,string(global.coneBestTime),1,1,0,c_black,c_black,c_black,c_black,1);

draw_set_color(c_white)