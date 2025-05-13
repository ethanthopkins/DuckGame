if (x_goto != -1) && (quack == false) && (!idle) {
	if (instance_position(x_goto, y_goto, oDuck) == noone) {
		mp_potential_step(x_goto, y_goto, 2 , false);	
		if (x_goto > oDuck.bbox_right) { //right
			sprite_index = sDuckRight;	
			image_speed = 1;
			duckDirection = Direction.right;
		}
		if (x_goto < oDuck.bbox_left) { //left
			sprite_index = sDuckLeft;	
			image_speed = 1;
			duckDirection = Direction.left;
		}
	}
}
if (collision_circle(x, y, strawBerryCollision, oStrawberry, false, true)) {
	switch (duckDirection) {
		case Direction.right: sprite_index = sDuckEatRight; break;
		case Direction.left: sprite_index = sDuckEatLeft; break;
	}
	image_speed = 1;	
	eat = true;
	if (!set) {
		eatCount ++;
		if ((eatCount % 3) == 0) {
			audio_play_sound(snDuckEat1, 1, false);
		} else {audio_play_sound(snDuckEat, 1, false)};
		set = true;
	}
}
if (collision_circle(x_goto, y_goto, 20, oDuck, false, false)) && (quack == false) && (!eat) {
	idle = true;
	quack = false;
	switch (duckDirection) {
		case Direction.right: sprite_index = sDuckIdleRight; break;
		case Direction.left: sprite_index = sDuckIdleLeft; break;
	}
	image_speed = 1;
}
if (quack) && (!idle) {
	image_speed = 1;
	switch (duckDirection) {
		case Direction.right: sprite_index = sDuckQuackRight; break;
		case Direction.left: sprite_index = sDuckQuackLeft; break;
	}
}