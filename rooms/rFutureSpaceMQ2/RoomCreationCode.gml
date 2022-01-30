  if (!instance_exists(oFezheadMQ2) && instance_exists(oConeheadMQ2)) {
		oConeheadMQ2.vsp = -20;
		oConeheadMQ2.hsp = 10;
		oConeheadMQ2.acl = 5;
		layer_background_sprite(layer_background_get_id(layer_get_id("MQ2BG")),sFutureSpaceBgMQ2Cone); 
 }