/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x;
y = oPlayer.y;


if (oPlayer.controller == 0){
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
else {
	var controllerh = gamepad_axis_value(0, gp_axislh);
	var controllerv = gamepad_axis_value(0, gp_axislv);
	
	if (abs(controllerh)> 0.2 || abs(controllerv) > 0.2){
		controllerangle = point_direction(0, 0, controllerh, controllerv);
	}
	image_angle = controllerangle;
	
}

firingdelay = firingdelay - 1;
recoil = max(0, recoil-1);
if (mouse_check_button(mb_left)) || (gamepad_button_check(0, gp_shoulderrb)) && (firingdelay < 0){
	firingdelay = 5;
	recoil = 4;
	
	with(instance_create_layer(x, y, "Bullet", oBullet)){
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_speed);
y = y - lengthdir_y(recoil, image_speed);

if ((image_angle > 90) || (image_angle < 270)){
	image_yscale = -1;
}
else {
	image_yscale = 1;
}