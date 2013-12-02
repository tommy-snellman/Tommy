jQuery(document).ready(function() {
	var today = new Date();
	var d = today.getDate();

	for(var i = d + 1; i < 32; i++) {
		$(".window-" + i).css("display", "none");
	}
	for(var x = 1; x < 32; x++) {
		if(x != d) {
			$(".window-" + x + ">").css("text-decoration", "none");
		}else {
			$(".window-" + x + ">").css("font-weight", "bold");
		}
	}
});
