// @desc ScreenShake(magnitude, frames)
// @arg Magnitude sets the strenght of the shake (radius in pixels)
// @arg Frames sets the lenght of the shake in frames (60 = 1 sec at 60fps)

with (oCamera){
	if (argument0 > shake_remain){
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}

}
