/// @description Insert description here
// You can write your code in this editor
if (moveDir = 0 && !lock) {
	if (oPersistent.key_left) {
		moveDir = 10	
	}
	if (oPersistent.key_right) {
		moveDir = -10	
	}
	if (oPersistent.key_space_press) {
		if (mq1X = 270) {
			oFade.state = 1;
			oFade.destination = rMilkQuest1;
			lock = true;
		} else if (mq2X = 270) {
			oFade.state = 1;
			oFade.destination = rTitleSreenMQ2;	
			lock = true;
		} else if (setX = 270) {
			oFade.state = 1;
			oFade.destination = rSettings;
			lock = true;
		} else if (mq0X = 270) {
			 
		}
	}
} else {
	step++;
	if (step >= 54) {
		step = 0;
		moveDir = 0;
	}
}
function move_game(varg) {
	var xMax = 1890
	if (!enablemq0) xMax = 1350
	if (varg < -270) {
		if (enablemq0) {
			varg = 1880+moveDir
		} else {
			varg = 1340+moveDir	
		}
	}
	else if (varg > xMax) {
		varg = -260+moveDir
	}
	else varg += moveDir;
	return varg;
}
mq1X = move_game(mq1X);
mq2X = move_game(mq2X);
setX = move_game(setX);
mq0X = move_game(42069);
//if (cursorPos > -2304923432423)