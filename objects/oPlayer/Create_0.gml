player_init(); //in case oPlayer is interptreted as a actual player 

if (global.spawnY !=0 ) {
	x = global.spawnX;
	y = global.spawnY;
	show_debug_message("player spawn moved :)");
}

setVsp = 0;

show_debug_message(string(global.spawnX));
show_debug_message(string(global.spawnY));

player = instance_create_layer(x,y,"Object",global.character);
player.vsp = setVsp
global.spawnX = 0;
global.spawnY = 0;
