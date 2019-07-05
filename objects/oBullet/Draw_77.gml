
if (place_meeting(x, y, oShotable)){
	with (instance_place(x, y, oShotable)){
		hp --;
		flash = 3;
		hitfrom = other.direction;
	}
}

instance_destroy();

if (place_meeting(x, y, oWall)) && (image_index != 0){
	instance_destroy();
}