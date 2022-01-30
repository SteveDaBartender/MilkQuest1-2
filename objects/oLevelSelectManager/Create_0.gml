instance_destroy(oMilk);
//global varaible spam :)
global.xSpawn = 0;
global.ySpawn = 0;
global.levelTimer = 0;
global.character = self;
global.spawnConehead = false;

char = oFezheadMQ2; //character to start level with
teammate = "Fezhead"; //teammate who follows
camera = instance_create_layer(x,y,"Object",oCamera); //creates a camera 

//sets colors for text
invalidColor = c_grey;
validColor = c_white;

//cursor varaibles
cursorPos = 0;
cool = 0;

//offsets for rows of text
lvlOffsetR1 = 45;
lvlOffsetR2 = 245;
lvlOffsetR3 = 305;

//future entrance value to change starting room.
entranceNum = "Not Implemented";

oPersistent.npcFollower = 0;

rousr_dissonance_set_state("Level Select");
rousr_dissonance_set_details("In Menus");