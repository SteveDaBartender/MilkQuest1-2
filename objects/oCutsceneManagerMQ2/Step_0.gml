
//this code is copied from MQ2 and just edited to work with gms so its really shit
//not even gonna bother commenting this mess, its quick and dirty
  if (cut == 2 || cut == 3) && global.character = oConeheadMQ2 {
    char2anim = (sConeheadCutsceneMQ2);
    char2Frame = (4);
    bg =(sFutureSpaceBgMQ2);
  }
  if (cut == 2) bg =(sSidewayValleyBgMQ2);
	if (cut == 4 && global.character = oFezheadMQ2) {
			bg =(sEndScreenBgMQ2);
			char1anim = (sNone);
	}
  if (mouse_check_button_pressed(mb_left)||keyboard_check_pressed(ord("Z"))||keyboard_check_pressed(vk_space)) step++;
  
  if (cut == 1 && global.character = oConeheadMQ2) {
    if (step == 1 && global.character = oConeheadMQ2) {
      bg =(sFezheadHouseMQ2);
      char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sFezheadCutsceneMQ2);
	  char2Frame = (1);
	  char1Frame = 0;
      ctxt = "Thanks for helping me get this piece of chocolate! Say, what's your name?";
    }
    if (step == 2) {
		      bg =(sFezheadHouseMQ2);
      char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sFezheadCutsceneMQ2);
      char2Frame = (0);
	  char1Frame = 1;
      ctxt = "ßthe name's conehead.";
    }
    if (step == 3) {
		      bg =(sFezheadHouseMQ2);
      char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sFezheadCutsceneMQ2);
      char2Frame = (5);
	  char1Frame = 0;
      ctxt = "Your parents sure were creative thinkers. Come back here anytime you want!";
    }
    if (step == 4) {
		      bg =(sFezheadHouseMQ2);
      char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sFezheadCutsceneMQ2);
      char2Frame = (0);
	  char1Frame = 1;
      ctxt = "ßsounds good. time for me to head home.";
    }
    if (step == 5) {
		char2anim = (sNone);
		bg =(sSidewayValleyBgMQ2);
		char1anim = (sConeheadCutsceneMQ2);
      char1Frame = (0);
	  char2Frame = 0;
      ctxt = "ßit's getting a bit late, but i should be able to reach the city before sundown.";
    }
    if (step == 6) {
				bg =(sSidewayValleyBgMQ2);
	  char1Frame = 2;
	  oPersistent.npcFollower = 0;
      ctxt = "ßhere we go again.";
    }
    if (step == 7) {
      char1anim = (sNone);
      ctxt = "";
      change_room(rSidewayValleyMQ2,0,0,true,global.character);
    }
  }
  if (cut == 1 && global.character = oFezheadMQ2) {
    if (step == 1) {
      bg =(sFezheadHouseMQ2);
      char1anim = (sFezheadCutsceneMQ2);
      char2anim = (sNone);
	  oPersistent.npcFollower = 0;
      ctxt = "Well, it looks like my journey to the void is finally over.";
    }
    if (step == 3) {
      char1Frame = (1);
      ctxt = "Now I can drink the milk!";
    }
    if (step == 4) {
      char1Frame = (2);
      ctxt = "Wait...";
    }
    if (step == 5) {
      char1Frame = (7);
      ctxt = "I don't like normal milk, I only drink chocolate milk...";
    }
    if (step == 6) {
      char1Frame = (8);
      ctxt = "Well, frick then.";
    }
    if (step == 7) {
      char1Frame = (4);
      ctxt = "Hmmmmm...";
    }
    if (step == 8) {
      char1Frame = (4);
      ctxt = "I guess I'll just go outside and ask!";
    }
    if (step == 9) {
      char1Frame = (5);
      ctxt = "Alrighty then. Time to head out!";
    }
    if (step == 10) {
      bg =(sSidewayValleyBgMQ2);
      char1Frame = (1);
      ctxt = "Its been so long since I went outside.";
    }
    if (step == 11) {
      bg =(sSidewayValleyBgMQ2);
      char1Frame = (2);
      ctxt = "Which was 2 minutes ago...";
    }
    if (step == 12) {
      bg =(sSidewayValleyBgMQ2);
      char1Frame = (1);
      ctxt = "Anyways, looks like the valley is all but empty. Guess it's walking time!";
    }
    if (step == 13) {
      char1anim = (sNone);
      ctxt = "";
      change_room(rSidewayValleyMQ2,0,0,true,global.character);
    }
  }
  if (cut == 2 && global.character = oFezheadMQ2) {
      if (step == 1) {
        bg =(sSidewayValleyBgMQ2);
        char1anim = (sFezheadCutsceneMQ2);
        char2anim = (sConeheadCutsceneMQ2);
        char2Frame = (4);
        ctxt = "Oh look, a local spider! I will attempt communications.";
      } 
      if (step == 2) {
        bg =(sSidewayValleyBgMQ2);
        char2Frame = (3);
        ctxt = "OY MATE LOOK OVER HERE!";
      } 
      if (step == 3) {
        char2Frame = (2);
        ctxt = "ßwhat the-";
      } 
      if (step == 4) {
        char2Frame = (1);
        char1Frame = (0);
        ctxt = "ßoh, hello weird guy. what brings you out of your house today?";
      } 
      if (step == 5) {
        char1Frame = (1);
        char2Frame = (0);
        ctxt = "I was looking for some chocolate for my milk.";
      } 
      if (step == 6) {
        char1Frame = (1);
        char2Frame = (1);
        ctxt = "ßwell, there's no stores around here, man.";
      } 
      if (step == 7) {
        char1Frame = (1);
        char2Frame = (1);
        ctxt = "ßthere is, however, a carnival up ahead.";
      } 
      if (step == 8) {
        char1Frame = (1);
        char2Frame = (1);
        ctxt = "Well thanks, cone guy! I'll check it out.";
      } 
      if (step == 9) {
        char1Frame = (1);
        char2Frame = (1);
        ctxt = "ßay, ill tag along too. lets go.";
      } 
      if (step == 10) {
        ctxt = "";
		oPersistent.npcFollower = 4;
        change_room(rCuriousCarnivalMQ2,0,0,true,global.character);
      }
    }
	  if (cut == 2 && global.character = oConeheadMQ2) {
      if (step == 1) {
        bg =(sCarnivalBgMQ2Cone);
        char1anim = (sConeheadCutsceneMQ2);
        char2anim = (sNone);
        char2Frame = (4);
        ctxt = "ßhmm, it seems my house is just ahea-";
      } 
      if (step == 2) {
		 char2anim = (sNone);
		 bg =(sCarnivalBgMQ2Cone)
        char2Frame = (3);
        ctxt = "ßholy crap the entire carnival is on fire.";
      } 
      if (step == 3) {
		 char2anim = (sNone);
		 bg =(sCarnivalBgMQ2Cone)
        char2Frame = (2);
        ctxt = "ßi gotta get outta here quick.";
      } 
      if (step == 4) {
        ctxt = "";
        change_room(rCuriousCarnivalMQ2,0,0,true,global.character);
      }
    }
  if (cut == 3 && global.character = oFezheadMQ2) {
    if (step == 1) {
      bg =(sFutureSpaceBgMQ2);
      char1anim = (sFezheadCutsceneMQ2);
      char2anim = (sConeheadCutsceneMQ2);
      char2Frame = (0);
      ctxt = "ßwhat the, that giant spring just flung us into the sky.";
    } 
    if (step == 2) {
      char1Frame = (5)
      ctxt = "Wait, I can smell it, the chocolate! Let's \ncontinue on!";
    }
    if (step == 3) {
	  oPersistent.npcFollower = 4;
      change_room(rFutureSpaceMQ2,0,0,true,global.character);
    }
  }
if (cut == 3 && global.character = oConeheadMQ2) {
	bg =(sFutureSpaceBgMQ2Cone);
    if (step == 1) {
      bg =(sFutureSpaceBgMQ2Cone);
      char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sKidCutsceneMQ2);
      char2Frame = (0);
      ctxt = "ß(im glad i was able to escape the fire. small issue though i live in that city)";
    } 
    if (step == 2) {
	  char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sKidCutsceneMQ2);
      char1Frame = (0)
	  char2Frame = (3)
      ctxt = "Hey, Spider Guy, you live down there??";
    }
    if (step == 3) {
	  char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sKidCutsceneMQ2);
      char1Frame = (1)
	  char2Frame = (2)
      ctxt = "ßwell i did. looks like some dude just came in and burned the whole thing down.";
    }
    if (step == 4) {
	  char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sKidCutsceneMQ2);
      char1Frame = (2)
	  char2Frame = (4)
      ctxt = "Oh uh-- That sucks!! I'm sorry... where are you gonna live now??";
    }
    if (step == 5) {
	char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sKidCutsceneMQ2);
      char1Frame = (1)
	  char2Frame = (0)
      ctxt = "ßi dunno man... i really dont know anyone who i can chill with...";
    }
    if (step == 6) {
			char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sKidCutsceneMQ2);
      char1Frame = (0)
	  char2Frame = (2)
      ctxt = "Well, I don't think my parents would like you coming with me... Hey wait!!";
    }
    if (step == 7) {
					char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sKidCutsceneMQ2);
      char1Frame = (3)
	  char2Frame = (3)
      ctxt = "There's a cardboard box I thew out just up ahead! You can sleep there for a while.";
    }
    if (step == 8) {
		char1anim = (sConeheadCutsceneMQ2);
      char2anim = (sKidCutsceneMQ2);
      char1Frame = (2)
	  char2Frame = (1)
      ctxt = "ßif thats what my life has come to, then i guess i will. thanks i guess, see ya around.";
    }
    if (step == 9) {
      change_room(rFutureSpaceMQ2,0,0,true,global.character);
    }
  }
  global.levelTimer += (1 / room_speed); 
  if (cut == 4 && !playedSong) {
	audio_play_sound(sEndgame,0,false);
	playedSong = true;
  }
if (cut == 4 && global.character = oFezheadMQ2) {
	if (step == 1) {
		bg =(sEndScreenBgMQ2);
		char1anim = (sNone);
		var carryZero = "";
		global.levelTimer -= (1 / room_speed);  
		var minutes = global.levelTimer div 60;  
		var seconds = global.levelTimer mod 60;  
		if (string_length(round(seconds)) = 1) carryZero = "0";
		var displaymins = string_format(minutes, 2, 0);  
		var displaysecs = string_digits(string_format(seconds, 2, 0)); 
		/*ctxt = "       You beat the Game In: " + string(displaymins) + ":" + carryZero + string(displaysecs)
		if (global.bestFezTime >= global.levelTimer) {
			global.bestFezTime = global.levelTimer;
			ctxt += ". /nThat's a new record!"
		}*/ ctxt = "";
	}
	if (step == 2) {
		bg =(sEndScreenBgMQ2);
		char1anim = (sNone);
		ctxt = ""
		global.debug = false;
		save_game_data();
		audio_stop_all()
		room_goto(rTitleSreenMQ2);
	}
 }
 //conehead will have a unique end screen, soon:tm:
if (cut == 4 && global.character = oConeheadMQ2) {
	if (step == 1) {
		
		global.beatMQ2 = 1;
		bg =(sEndScreenBgConeMQ2);
		char1anim = (sNone);
		var carryZero = "";
		global.levelTimer -= (1 / room_speed);  
		var minutes = global.levelTimer div 60;  
		var seconds = global.levelTimer mod 60;  
		if (string_length(round(seconds)) = 1) carryZero = "0";
		var displaymins = string_format(minutes, 2, 0);  
		var displaysecs = string_digits(string_format(seconds, 2, 0)); 
		ctxt = "       You beat the Game In: " + string(displaymins) + ":" + carryZero + string(displaysecs)
		if (global.bestConeTime >= global.levelTimer) {
			global.bestConeTime = global.levelTimer;
			ctxt += ". /nThat's a new record!"
		} ctxt = "";
	}
	if (step == 2) {
		bg =(sEndScreenBgMQ2);
		char1anim = (sNone);
		ctxt = ""
		global.debug = false;
		audio_stop_all()
		save_game_data();
		room_goto(rTitleSreenMQ2);
	}
 }
 
