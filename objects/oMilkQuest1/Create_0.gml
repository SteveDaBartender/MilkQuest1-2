help = "MILK QUEST 1 RERELEASE TRIVIA: I made this while listening to the deltarune mixtape on loop and would not sleep until it was finished. It took 5 hours. GOD HELP..."
help2 = "(cont) As well, nost of this shit is just copy and pasted from the original. same for the MQ2 cutscene engine. thanks yoyo games for making GML literally just javascript!"
help3 = "(cont2)the terrible elif chains here are because i forgot lists existed and the applab didn't have dictionaries. WHY DIDNT I JUTS USE A LIST IM SO ANGRY"
HELP4 = "(count dracula 3) i got the text engine working in literally 20 minutes (the part i could copy paste) 80% of my time was spent just redrawing sprites, and getting them to draw in the right places."

//rousr_dissonance_set_large_image("mq1", "Milk Quest 1")
audio = true;
txt = "text is broken lol";
cursorPos = 0;
cool = 0;
count = 0;
screen = 0; //0-main 1-c1 2-c2 3-c3 4-end

color = c_grey;
function drawTextboxt() { //lol i fucked up the spelling
	draw_rectangle_color(81,400,458,540,c_white,c_white,c_white,c_white,false);
	draw_rectangle_color(81,400,458,540,c_grey,c_grey,c_grey,c_grey,true);
	draw_set_font(fMQ1);
	draw_text_ext_color(95,405,txt,20,350,color,color,color,color,1);	
}