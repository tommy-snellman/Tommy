jQuery(document).ready(function() {
	var today = new Date();
	var d = today.getDate();

	for(var i = d + 1; i < 25; i++) {
		$(".window-" + i).css("display", "none");
	}
	for(var x = 1; x < 25; x++) {
		if(x != d) {
			$(".window-" + x + ">").css("text-decoration", "none");
		}else {
			$(".window-" + x + ">").css("font-weight", "bold");
		}
	}

	for(var i = 0; i < 15; i++) {
    	$(".window-" + d + ">").fadeTo('slow', 0.2).fadeTo('slow', 3.0);
  	}
});
