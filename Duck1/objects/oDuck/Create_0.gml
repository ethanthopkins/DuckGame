device_mouse_dbclick_enable(false);
randomize();
song = irandom(3);
switch (song) {
	case 0: audio_play_sound(snIce, 1, false); break;
	case 1: audio_play_sound(snSweetJane, 1, false); break;
	case 2: break;
	case 3: break;
}
strawBerryCollision = 75;
x_goto = -1;
y_goto = y;
image_index = sDuckIdleRight;
image_speed = 1;
quack = false;
x_strawberry = -1;
y_strawberry = -1;
eat = false;
enum Direction {
	left, right
}
duckDirection = Direction.right;
set = false; // for the strawberry eating
quackCount = 0;
idle = true;
eatCount = 0;
