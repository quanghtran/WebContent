$(document).ready(function() {

	validateCompanyName();
	validateCompanyAddress();
	validateCompanyPhone();
	validateCompanyEmail();
	validateCompanyPassword();
	validateConfirmPassword();
	

});

function validateCompanyName() {
	
	$("#form").submit(
			function(event) {
				var f = $("#name").val();
				var symbol = $('<span class="glyphicon glyphicon-exclamation-sign" id="nErrSym" style="color:red;font-size:large;"></span>');
				var error = $('<strong id="nError" style="color:red;font-size:large;">Name must be minimum 2 characters.</strong>');
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				$('#nErrSym').remove();
				$('#nError').remove();
				$("#name").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					$(symbol).appendTo("#nameErrDiv");
					$(error).appendTo("#nameErrDiv");
					$("#name").parent().addClass('has-error');
					event.preventDefault();	
				} else {
					return true;
				}
	});
	
	$("#name").keyup(
			function(event) {
				var f = $("#name").val();
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				
				
				if(regex.test(f)) {
					$("#name").parent().removeClass('has-error');
					$('#nErrSym').remove();
					$('#nError').remove();
				}
			});
}

function validateCompanyAddress() {
	
	$("#form").submit(
			function(event) {
				var f = $("#address").val();
				var symbol = $('<span class="glyphicon glyphicon-exclamation-sign" id="addErrSym" style="color:red;font-size:large;"></span>');
				var error = $('<strong id="addError" style="color:red;font-size:large;">Address must be minimum 2 characters.</strong>');
				var regex = /^([0-9a-zA-Z .\-',]{2,45})$/;
				$('#addErrSym').remove();
				$('#addError').remove();
				$("#address").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					$(symbol).appendTo("#addressErrDiv");
					$(error).appendTo("#addressErrDiv");
					$("#address").parent().addClass('has-error');
					event.preventDefault();	
				} else {
					return true;
				}
	});
	
	$("#address").keyup(
			function(event) {
				var f = $("#address").val();
				var regex = /^([0-9a-zA-Z .\-',]{2,45})$/;
				
				
				if(regex.test(f)) {
					$("#address").parent().removeClass('has-error');
					$('#addErrSym').remove();
					$('#addError').remove();
				}
			});
}

function validateCompanyPhone() {
	
	$("#form").submit(
			function(event) {
				var f = $("#phone").val();
				var symbol = $('<span class="glyphicon glyphicon-exclamation-sign" id="phoneerrSym" style="color:red;font-size:large;"></span>');
				var error = $('<strong id="phoneError" style="color:red;font-size:large;">Enter Phone Number With No Special Characters.</strong>');
				var regex = /^([0-9]{10,12})$/;
				$("#phoneerrSym").remove();
				$("#phoneError").remove();
				$("#phone").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					
					$(symbol).appendTo("#phoneErrDiv");
					$(error).appendTo("#phoneErrDiv");
					$("#phone").parent().addClass('has-error');
					event.preventDefault();
					
				} else {
					return true;
				}
			});
	
	$("#phone").keyup(
			function(event) {
				var f = $("#phone").val();
				var regex = /^([0-9]{10,12})$/;
				
				
				if(regex.test(f)) {
					
					$('#phoneerrSym').remove();
					$('#phoneError').remove();
					$("#phone").parent().removeClass('has-error');
				}
			});
}

function validateCompanyEmail() {
	
	$("#form").submit(
			function(event) {
				var f = $("#email").val();
				var symbol = $('<span class="glyphicon glyphicon-exclamation-sign" id="emailerrSym" style="color:red;font-size:large;"></span>');
				var error = $('<strong id="emailError" style="color:red;font-size:large;">Invalid Email Format</strong>');
				var regex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				$("#emailerrSym").remove();
				$("#emailError").remove();
				$("#email").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					
					$(symbol).appendTo("#emailErrDiv");
					$(error).appendTo("#emailErrDiv");
					$("#email").parent().addClass('has-error');
					event.preventDefault();
					
				} else {
					return true;
				}
			});
	
	$("#email").keyup(
			function(event) {
				var f = $("#email").val();
				var regex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

				if(regex.test(f)) {
					
					$('#emailerrSym').remove();
					$('#emailError').remove();
					$("#email").parent().removeClass('has-error');
				}
			});
}

function validateCompanyPassword() {
	
	$("#form").submit(
			function(event) {
				var f = $("#password").val();
				var symbol = $('<span class="glyphicon glyphicon-exclamation-sign" id="passerrSym" style="color:red;font-size:large;"></span>');
				var error = $('<strong id="passError" style="color:red;font-size:large;">Minimum 6 characters; a number, a uppercase/lowercase letter.</strong>');
				
				// at least one number, one lowercase and one uppercase letter 
				// at least six characters
				var regex = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/;
				$("#passerrSym").remove();
				$("#passError").remove();
				$("#password").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					
					$(symbol).appendTo("#passwordErrDiv");
					$(error).appendTo("#passwordErrDiv");
					$("#password").parent().addClass('has-error');
					event.preventDefault();
					
				} else {
					return true;
				}
			});	
	
	$("#password").keyup(
			function(event) {
				var f = $("#password").val();
				var regex = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/;

				if(regex.test(f)) {
					
					$('#passerrSym').remove();
					$('#passError').remove();
					$("#password").parent().removeClass('has-error');
				}
			});
}

function validateConfirmPassword() {
	
	$("#form").submit(
			function(event) {
				var f = $("#confirmPass").val();
				var p = $('#password').val();
				var symbol = $('<span class="glyphicon glyphicon-exclamation-sign" id="conerrSym" style="color:red;font-size:large;"></span>');
				var error = $('<strong id="conError" style="color:red;font-size:large;">Password mismatch, Confirm the password from above.</strong>');
				var regex = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/;
				$("#conerrSym").remove();
				$("#conError").remove();
				$("#confirmPass").parent().removeClass('has-error');
				
				if(f != p && regex.test(p)) {
					
					$(symbol).appendTo("#confirmPassErrDiv");
					$(error).appendTo("#confirmPassErrDiv");
					$("#confirmPass").parent().addClass('has-error');
					event.preventDefault();
					
				} else {
					return true;
				}
			});
	
	$("#confirmPass").keyup(
			function(event) {
				var f = $("#password").val();
				var p = $('#confirmPass').val();
				var regex = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/;

				if(f === p) {
					
					$('#conerrSym').remove();
					$('#conError').remove();
					$("#confirmPass").parent().removeClass('has-error');
				}
			});
}