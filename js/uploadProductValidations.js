$(document).ready(function() {

	validateBrand();
	validateName();
	validateCategory();
	validateSubcategory();
	validatePrice();
	validateQuantity();
	validateDescription();

});

function validateBrand() {
	
	$("#form").submit(
			function(event) {
				var f = $("#brand").val();
				var error = $('<p id="bError" style="color:red;font-size:120%;">Brand must be minimum 2 characters.</p>');
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				
				$('#bError').remove();
				$("#brand").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					
					$(error).appendTo("#brandErrDiv");
					$("#brand").parent().addClass('has-error');
					event.preventDefault();	
				} else {
					return true;
				}
	});
	
	$("#brand").keyup(
			function(event) {
				var f = $("#brand").val();
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				
				if(regex.test(f)) {
					$("#brand").parent().removeClass('has-error');
					$('#bError').remove();
				}
			});
	
}

function validateName() {
	
	$("#form").submit(
			function(event) {
				var f = $("#name").val();
				var error = $('<p id="nameError" style="color:red;font-size:120%;">Name must be minimum 2 characters.</p>');
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				
				$('#nameError').remove();
				$("#name").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
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
					$('#nameError').remove();
				}
			});
	
}

function validateCategory() {
	
	$("#form").submit(
			function(event) {
				var f = $("#category").val();
				var error = $('<p id="categoryError" style="color:red;font-size:120%;">Category must be minimum 2 characters.</p>');
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				
				$('#categoryError').remove();
				$("#category").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					$(error).appendTo("#categoryErrDiv");
					$("#category").parent().addClass('has-error');
					event.preventDefault();	
				
				} else {
					return true;
				}
	});
	
	$("#category").keyup(
			function(event) {
				var f = $("#category").val();
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				
				if(regex.test(f)) {
					$("#category").parent().removeClass('has-error');
					$('#categoryError').remove();
				}
			});
	
}

function validateSubcategory() {
	
	$("#form").submit(
			function(event) {
				var f = $("#subcategory").val();
				var error = $('<p id="subcategoryError" style="color:red;font-size:120%;">Subcategory must be min. 2 characters.</p>');
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				
				$('#subcategoryError').remove();
				$("#subcategory").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					$(error).appendTo("#subcategoryErrDiv");
					$("#subcategory").parent().addClass('has-error');
					event.preventDefault();	
				
				} else {
					return true;
				}
	});
	
	$("#subcategory").keyup(
			function(event) {
				var f = $("#subcategory").val();
				var regex = /^([a-zA-Z .\-',]{2,45})$/;
				
				if(regex.test(f)) {
					$("#subcategory").parent().removeClass('has-error');
					$('#subcategoryError').remove();
				}
			});
	
}

function validatePrice() {
	
	$("#form").submit(
			function(event) {
				var f = $("#price").val();
				var error = $('<p id="priceError" style="color:red;font-size:120%;">Invalid, use digits and decimal </p>');
				var regex = /^[\d.]+$/;
				
				$('#priceError').remove();
				$("#price").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					$(error).appendTo("#priceErrDiv");
					$("#price").parent().addClass('has-error');
					event.preventDefault();	
				
				} else {
					return true;
				}
	});
	
	$("#price").keyup(
			function(event) {
				var f = $("#price").val();
				var regex = /^[\d.]+$/;
				
				if(regex.test(f)) {
					$("#price").parent().removeClass('has-error');
					$('#priceError').remove();
				}
			});
	
}

function validateQuantity() {
	
	$("#form").submit(
			function(event) {
				var f = $("#quantity").val();
				var error = $('<p id="quantityError" style="color:red;font-size:120%;">Invalid Quantity, Digits only. </p>');
				var regex = /^[\d]+$/;
				
				$('#quantityError').remove();
				$("#quantity").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					$(error).appendTo("#quantityErrDiv");
					$("#quantity").parent().addClass('has-error');
					event.preventDefault();	
				
				} else {
					return true;
				}
	});
	
	$("#quantity").keyup(
			function(event) {
				var f = $("#quantity").val();
				var regex = /^[\d]+$/;
				
				if(regex.test(f)) {
					$("#quantity").parent().removeClass('has-error');
					$('#quantityError').remove();
				}
			});
	
}

function validateDescription() {
	
	$("#form").submit(
			function(event) {
				var f = $("#description").val();
				var error = $('<p id="descriptionError" style="color:red;font-size:120%;">Description must have values.</p>');
				var regex = /^([a-zA-Z .\-',]{1,500})$/;
				
				$('#descriptionError').remove();
				$("#description").parent().removeClass('has-error');
				
				if(!regex.test(f)) {
					$(error).appendTo("#descriptionErrDiv");
					$("#description").parent().addClass('has-error');
					event.preventDefault();	
				
				} else {
					return true;
				}
	});
	
	$("#description").keyup(
			function(event) {
				var f = $("#description").val();
				var regex = /^([a-zA-Z .\-',]{1,500})$/;
				
				if(regex.test(f)) {
					$("#description").parent().removeClass('has-error');
					$('#descriptionError').remove();
				}
			});
	
}

