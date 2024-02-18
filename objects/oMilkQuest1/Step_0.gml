//I LOVE COPY AND PASTING !!!!
if (oPersistent.key_space_press && cool > 10) {
	count++;	
}
		//increment the cooldown
		cool++;
switch (screen) {
	case 0: //menu
		//rousr_dissonance_set_details("Playing Milk Quest 1");
		//rousr_dissonance_set_state("Title Screen");
		audio = false
		audio_stop_all();
		txt = "menu state";
		//moves the cursor up and down, 'cool' is the cooldown
		if (oPersistent.key_left && cool > 10) {
			cursorPos = clamp(cursorPos-1,0,3);
			cool = 0;
		}
		if (oPersistent.key_right && cool > 10) {
			cursorPos = clamp(cursorPos+1,0,3);
			cool = 0;
		}

		if (count > 0) {
			switch (cursorPos) {
				case 0:
				count = -100;
					oFade.state = 1;
					oFade.destination = rMainMenu;
					break;
				case 1:
					screen = 1;
					count = 0;
					break;
				case 2:
					screen = 2;
					count = 0;
					break;
				case 3:
					screen = 3;
					count = 0;
					break;

			}
		}
		break;
	case 1: //c1
		//rousr_dissonance_set_details("Playing Milk Quest 1");
		//rousr_dissonance_set_state("Chapter 1");
	if (count = 0) {
		txt = "man I sure am hungry. i hope nothing inconvenient happens to me.";
		if (!audio && screen != 0) audio_play_sound(sChapter1,0,false);	
		audio = true;
	}
	  if (count == 1) {
	    txt = "let me check my magic refrigerator.";
	  } else if (count ==2) {
	    txt = "oh i have no milk.";
	  } else if (count ==3) {
	    txt = "that sucks";
	  }else if (count ==4) {
	    txt = "well uh if i have no milk guess ill just have to go buy some. fun.";
	  }else if (count ==5) {
	    txt = "guess ill go hop in the car now.";
	  }else if (count ==6) {
	    txt = "...";
	    }else if (count ==7) {
	    txt = "why do i say everything i think and do? eh whatever, im too thristy to have cognitant thoughts";
	    } 
		if (count > 7) {
			screen = 0;	
			audio = false;
			count = 0;
		}
		break;
	case 2: //c2
		//rousr_dissonance_set_details("Playing Milk Quest 1");
		//rousr_dissonance_set_state("Chapter 2");
		if (count == 0) {
			txt = "....."
			if (!audio) audio_play_sound(sChapter2,0,false);	
			audio = true;
		}
		  if (count == 1) {
		    txt = "wait";
		  }  if (count == 2) {
		    txt = "where is my car";
		  } if (count == 3) {
		    txt = "i think i have entered the void...";
		  }if (count == 4) {
		    txt = ".....";}
		    if (count == 5) {
		    txt = "not again.";
		  }if (count == 6) {
		    txt = "oh look, here comes a strange figure";
		  }
		if (count > 6) {
			screen = 0;	
			audio = false;
			count = 0;
		}
		break;
	case 3: //c3
	//rousr_dissonance_set_details("Playing Milk Quest 1");
	//rousr_dissonance_set_state("Chapter 3");
	if (count == 0) {
		txt = "who are you?"
		if (!audio) audio_play_sound(sChapter3,0,false);		
		audio = true;
	}
	  if (count == 1) {
	    txt = "I HAVE NO NAME, AND I AM HERE TO STEAL YOUR MILK!!!";
	  }if (count == 2) {
	    txt = "jokes on you i have no milk.";
	  }if (count == 3) {
	    txt = "OH"; }
	    if (count == 4) {
	    txt = "WELL, NOW I JUST FEEL BAD.";}
	    if (count == 5) {
	    txt = "FOR I WAS THE ONE WHO STOLE YOUR CAR!!!";}
	    if (count == 6) {
	    txt = "okay, well, i just want to eat my breakfast. thats all i want to do today.";}
	  if (count == 7) {
	    txt = "ALRIGHT ALRIGHT, YOU CAN LEAVE THE VOID AND HAVE ALL YOUR STUFF BACK, I GUESS.";}
	    if (count == 8) {
	    txt = "okay cool, can i also have a gallon of milk to go with that?";}
	    if (count == 9) {
	    txt = "YEAH SURE MAN. LEMME JUST CHARGE YOUR BANK ACCOUNT REAL QUICK.";}
	    if (count == 10) {
	    txt = "ALRIGHT DONE! YOU CAN LEAVE NOW";
		}		
		if (count > 11) {
			screen = 4;	
			count = 1;
			audio = false;
		}
		break;
	case 4: //end
		//rousr_dissonance_set_details("Playing Milk Quest 1");
		//rousr_dissonance_set_state("Ending");
			txt = "win state";
			global.beatMQ1 = 1;
			save_game_data();
		if (count > 1) {
			screen = 0;
			count = 0;
			audio = false;
		}
		break;
}