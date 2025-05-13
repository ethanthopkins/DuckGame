if (!idle) && ((image_index != sDuckIdleRight) || (image_index != sDuckIdleLeft)) {
	image_speed = 0;
	quack = false;
}
if (collision_circle(x, y, strawBerryCollision, oStrawberry, false, true)) && (instance_exists(oStrawberry)) && (eat) {
	instance_destroy(oStrawberry);	
	eat = false;
	set = false;
}