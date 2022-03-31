/// @description Insert description here
// You can write your code in this editor
if live_call() return live_result;
draw_set_alpha(0.5)
draw_set_color(make_color_rgb(50,50,50))
var off = 0
repeat 20{
	off += 0.1
	draw_roundrect(selX1+off,selY1+off,selX2-off,selY2-off,true)
	draw_set_alpha(1-off/2)
}
draw_set_alpha(1);
draw_roundrect(selX1,selY1,selX2,selY2,true)