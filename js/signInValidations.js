$(document).ready(function() {

	if($("#passwordFail").length > 0 || $("#emailFail").length > 0 || $("#recovery").length > 0) {
		
		$("#loginModal").modal("show");
	}

});