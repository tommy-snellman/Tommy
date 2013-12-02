jQuery(document).ready(function() {
	var today = new Date();
	var d = today.getDate();

	for(var i = d + 1; i < 32; i++) {
		$(".window-" + i).css("display", "none");
	}
});
