	x_gotoTest = event_data[? "posX"];
	y_gotoTest = event_data[? "posY"];
if (instance_position(x_gotoTest, y_gotoTest, oDuck) == noone) {
	idle = false;
	x_goto = event_data[? "posX"];
	y_goto = event_data[? "posY"];
} else {
	idle = false;
	quack = true;
	quackCount ++;
	image_speed = 1;
	if (quackCount % 10 == 0) {
		audio_play_sound(snQuack1, 1, false);
	} else {audio_play_sound(snQuack, 1, false)};
}