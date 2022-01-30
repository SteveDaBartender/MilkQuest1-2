/// @description Insert description here
// You can write your code in this editor
rousr_dissonance_set_details("Playing Milk Quest 2");
rousr_dissonance_set_large_image("mq2", "Milk Quest 2")
rousr_dissonance_set_state("Title Screen");
camera = instance_create_layer(x,y,self.layer,oCamera);
camera.follow = self;
 global.globalTimer = 0;
 global.milk = 0;
foregroundY = 600 //maintitlep
backgroundY =  275 //maintitle