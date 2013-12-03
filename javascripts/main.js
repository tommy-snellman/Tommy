//  Script for Advent Calendar!
jQuery(document).ready(function() {
	var today = new Date(); // Date() = output the date - "Tue Dec 03 2013 10:44:32 GMT+0200 (FLE, normaltid)"
	var d = today.getDate(); // getDate() = outputs only the day's number - 3

// Compares today's date and output only the ones that has been and current day - If today is Dec 3, it'll output Dec 1 -> Dec 3
	for(var i = d + 1; i < 25; i++) {
		$(".window-" + i).css("display", "none");
	}
	// Puts bold on the current day and remove underline from all others
	for(var x = 1; x < 25; x++) {
		if(x != d) {
			$(".window-" + x + ">").css("text-decoration", "none");
		}else {
			$(".window-" + x + ">").css("font-weight", "bold");
		}
	}
	// Current day blinks 15 times
	for(var i = 0; i < 15; i++) {
    	$(".window-" + d + ">").fadeTo('slow', 0.2).fadeTo('slow', 3.0);
  	}
});
