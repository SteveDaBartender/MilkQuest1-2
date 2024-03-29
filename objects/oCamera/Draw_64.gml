char = global.character;
if (global.debug){
	ds_list_add(averageFps, fps_real);
	fpsTotal += fps_real;
	 realFpsAvg =  fpsTotal / ds_list_size(averageFps);
	
	draw_set_colour(c_white);
	draw_set_font(fDebug);
	draw_text(0,0 ,"Invincibility Frames:" + string(char.invincibleTimer));
	draw_text(0,20 ,"Health:" + string(char.hp));
	draw_text(0,40 ,"X Pos:" + string(char.x));
	draw_text(0,60 ,"Y Pos:" + string(char.y));
	draw_text(0,80 ,"Roll: " + string(char.roll));
	draw_text(0,100 ,"Horizontal Velocity:" + string(char.hsp));
	draw_text(0,120 ,"Vertical Velocity:" + string(char.vsp));
	draw_text(0,140 ,"Idle Timer:" + string(char.idleTimer));
	draw_text(0,220 ,"Jump Extendable:" + string(char.jumpExtendable));
	draw_text(0,200 ,"State:" + string(char.state));
	draw_text(0,240 ,"Acceleration:" + string(char.acl));
	draw_text(0,260 ,"Global Timer" +string(global.globalTimer));
	draw_text(0,280 ,"" +string(object_get_name(randomObj)));
	draw_text(0,300 ,"TransitionType:" +string(global.transitionType));
	draw_text(0,320 ,"TransitionTimer" +string(global.transitionTime));
	draw_text(0,160 ,"Anim. Frame:" + string(round(char.image_index)));
	draw_text(0,360, string(xTilt));
	draw_text(0,380, string(yTilt));
	draw_text(0,400, string(room_next(room)));
	draw_text(880,0 ,string(fps) + "Capped FPS");
	draw_text(800,20 ,string(realFpsAvg) + " Total FPS");
	draw_text(0,420 ,string(char.image_xscale) + " Total FPS");
	//draw_sprite_ext(mask_index,0,x,y,1,1,0,c_aqua,0.5);
	
}
