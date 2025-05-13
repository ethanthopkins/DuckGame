gesture_tap_count(false);
x_strawberry = event_data[? "posX"];
y_strawberry = event_data[? "posY"];
if (instance_position(x_strawberry, y_strawberry, oDuck) == noone) {
	instance_create_layer(x_strawberry, y_strawberry, layer, oStrawberry);
}
