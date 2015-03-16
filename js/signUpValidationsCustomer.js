var symbol = $('<span class="glyphicon glyphicon-exclamation-sign" id="doberrSym" style="color:red;font-size:large;"></span>');
var error = $('<strong id="dobError" style="color:red;font-size:large;">Invalid Date of Birth</strong>');


$(document).ready(function() {

	datePickerCreate();
	validateFirstName();
	keyupFirstName();
	validateLastName();
	keyupLastName();
	validateDOB();
	validateAddress();
	keyupAddress();
	validatePhone();
	keyupPhone();
	validateEmail();
	keyupEmail();
	validatePassword();
	keyupPassword();
	validateConfirmPassword();
	keyupConfirmPassword();
	

});

function datePickerCreate() {
	
	$(function() {
		$('#datepicker').datepicker({
		    format: 'yyyy-mm-dd',
		    autoclose: "true"
		}).on('changeDate', function(ev) {
			
			$("#doberrSym").remove();
			$("#dobError").remove();
			$("#datepicker").parent().removeClass('has-error');
			
		});	
	});
}

function validateFirstName() {
	$("#form").submit(
			function(event) {
				var f = $("#firstName").val();
				var symbol = $('<span class="glyphicon glyphicon-exclamation-sign" id="fnerrSym" style="color:red;font-size:large;"></span>');
				var error = $('<strong id="fnError" style="color:red;font-size:large;">First Name must be minimum 2 characters.</strong>');
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				$('#fnerrSym').remove();
				$('#fnError').remove();
				$("#firstName").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					$(symbol).appendTo("#fnameErrDiv");
					$(error).appendTo("#fnameErrDiv");
					$("#firstName").parent().addClass('has-error');
					event.preventDefault();	
				} else {
					return true;
				}
	});		
}

function validateLastName() {
	$("#form").submit(
			function(event) {
				var f = $("#lastName").val();
				var symbol = $('<span class="glyphicon glyphicon-exclamation-sign" id="errSym" style="color:red;font-size:large;"></span>');
				var error = $('<strong id="lnError" style="color:red;font-size:large;">Last Name must be minimum 2 characters.</strong>');
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				$("#errSym").remove();
				$("#lnError").remove();
				$("#lastName").parent().removeClass('has-error');
				if(!regex.test(f)) {
					
					$(symbol).appendTo("#lnameErrDiv");
					$(error).appendTo("#lnameErrDiv");
					$("#lastName").parent().addClass('has-error');
					event.preventDefault();
					
				} else {
					return true;
				}
			});		
}

function validateDOB() {
	$("#form").submit(
			function(event) {
				var f = $("#datepicker").val();
				
				var regexone = /^[0-9]{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])/;
				$("#doberrSym").remove();
				$("#dobError").remove();
				$("#datepicker").parent().removeClass('has-error');
				if(!regexone.test(f)) {
					
					$(symbol).appendTo("#dobErrDiv");
					$(error).appendTo("#dobErrDiv");
					$("#datepicker").parent().addClass('has-error');
					
					event.preventDefault();	
				} else {
					
					return true;
				}
			});		
}

function validateAddress() {
	$("#form").submit(
			function(event) {
				var f = $("#address").val();
				var symbol = $('<span class="glyphicon glyphicon-exclamation-sign" id="adderrSym" style="color:red;font-size:large;"></span>');
				var error = $('<strong id="addError" style="color:red;font-size:large;">Address must be minimum 2 characters.</strong>');
				var regex = /^([0-9a-zA-Z .\-',]{2,45})$/;
				$("#adderrSym").remove();
				$("#addError").remove();
				$("#address").parent().removeClass('has-error');
				if(!regex.test(f)) {
					
					$(symbol).appendTo("#addErrDiv");
					$(error).appendTo("#addErrDiv");
					$("#address").parent().addClass('has-error');
					event.preventDefault();
					
				} else {
					return true;
				}
			});		
}

function validatePhone() {
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
}

function validateEmail() {
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
}

function validatePassword() {
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
					
					$(symbol).appendTo("#passErrDiv");
					$(error).appendTo("#passErrDiv");
					$("#password").parent().addClass('has-error');
					event.preventDefault();
					
				} else {
					return true;
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
					
					$(symbol).appendTo("#conpassErrDiv");
					$(error).appendTo("#conpassErrDiv");
					$("#confirmPass").parent().addClass('has-error');
					event.preventDefault();
					
				} else {
					return true;
				}
			});		
}

function keyupFirstName() {
	
	$("#firstName").keyup(
			function(event) {
				var f = $("#firstName").val();
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				
				
				if(regex.test(f)) {
					$("#firstName").parent().removeClass('has-error');
					$('#fnerrSym').remove();
					$('#fnError').remove();
				}
			});
}

function keyupLastName() {
	
	$("#lastName").keyup(
			function(event) {
				var f = $("#lastName").val();
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				
				
				if(regex.test(f)) {
					$("#lastName").parent().removeClass('has-error');
					$('#errSym').remove();
					$('#lnError').remove();
				}
			});
}

function keyupAddress() {
	
	$("#address").keyup(
			function(event) {
				var f = $("#address").val();
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				
				
				if(regex.test(f)) {
					
					$('#adderrSym').remove();
					$('#addError').remove();
					$("#address").parent().removeClass('has-error');
				}
			});
}

function keyupPhone() {
	
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

function keyupEmail() {
	
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

function keyupPassword() {
	
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

function keyupConfirmPassword() {
	
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







