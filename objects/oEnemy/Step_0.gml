vsp = grv + vsp;

if (place_meeting(hsp+x, y, oWall)){
	while (!place_meeting(x + sign(hsp), y, oWall)){
		x = x + sign(hsp);
	}
	hsp = -hsp;
}

x = x + hsp;

if (place_meeting(x, y + vsp, oWall)){
	while (!place_meeting(x, y+ sign(vsp), oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;

}

y = y + vsp;

if (hsp != 0){
	image_xscale = sign(hsp);
}