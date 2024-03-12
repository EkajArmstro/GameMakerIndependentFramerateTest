/// @description Begin Step

// accumulate how much time has passed since the last render frame
timeAcc += delta_time;
if (timeAcc > uspf) {
	// this means it's time to update the game logic
	timeAcc -= uspf;
	step = true;
} else {
	step = false;
}

if (timeAcc <= uspf) {
	// how far we are into frame (for interpolation)
	framePos = timeAcc / uspf;
	
	// in case we turned off drawing due to running slowly
	draw_enable_drawevent(true);
} else {
	// this means we're running too slowly to keep up to
	// "real time" -- we're supposed to update the game logic
	// twice before rendering -- up to you how you want to
	// handle this (for some games allowing you to play
	// slower than real time is effectively cheating)
	// we're going to try disabling drawing
	// every other frame to help catch up
	framePos = 1;
	drewLast = !drewLast
	draw_enable_drawevent(drewLast);
	
	if (timeAcc > 2000000) {
		// we're over 2 full seconds behind real time
		// give up on trying to catch up
		// and just accept we fell behind real time
		timeAcc = 0;
	}
}
