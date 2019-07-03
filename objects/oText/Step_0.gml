/// @description

letter = letter + spd;
text_current = string_copy(text, 1, floor(letter));

draw_set_font(fMenu);

if (h == 0) h = string_height(text);
w = string_width(text_current);

//Destroy when done
if (letter >= length) && (keyboard_check_pressed(vk_anykey)){
	instance_destroy();
	with (oCamera) follow = oPlayer;
}