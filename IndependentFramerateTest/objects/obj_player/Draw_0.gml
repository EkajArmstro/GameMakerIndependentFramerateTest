/// @description Draw

// for testing
draw_text(0, 0, string(fps)+"\nInterpolating: "+string(interpolating));

var xpos = x;
var ypos = y;

// so you can turn it off to test how it looks either way
if (interpolating) {
	xpos = lerp(xprev, x, framePos);
	ypos = lerp(yprev, y, framePos);
}

draw_sprite_ext(sprite_index, image_index, xpos, ypos, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
