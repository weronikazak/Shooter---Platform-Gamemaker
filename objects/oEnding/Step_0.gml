//Move player towards center
layer_x("Assets_1", min(layer_get_x("Assets_1")+1, RES_W * 0.5 - 32));

//Progress text
letters += spd;
text = string_copy(endtext[currentline], 1, floor(letters));

//Next line
if (letters >= length) && (keyboard_check_pressed(vk_anykey)){
	if (currentline+1 == array_length_1d(endtext)){
		SlideTransition(TRANS_MODE.RESTART);
	}
	else {
		currentline++;
		letters = 0;
		length = string_length(endtext[currentline]);
	}
}