
$(document).ready(function () {
	
	$.validator.addMethod("uniqueUserName", function(value, element) {
	$.ajax({
			type: "POST",
			 url: "php/checkdocument.php",
			data: "checkUsername="+value,
			dataType:"html",
		 success: function(msg)
		 {
				// if the user exists, it returns a string "true"
				if(msg == "true")
					 return false;  // already exists
				return true;      // username is free to use
		 }
		}
	)}, "Username is Already Taken");


	$('#inscription-form').validate({
		rules: {
			"data[Person][email]": {
				required: true,
				email: true
			},
			"data[Person][document]": {
				required: true,
				number: true,
				minlength: 8
			},
			"data[Student][cellphone]": {
				required: true,
				number: true
			},
			"data[Student][birtdate]": {
				required: true,
				date: true	
			},
			"data[Person][cellphone]": {
				required: true,
				number: true,
				minlength: 8
			},
			"data[Inscription][establishment_id]": {
				required: true
				
			}
		}
	});

		/*
	$('#new-student').validate({
		rules: {
			"data[Student][email]": {
				required: true,
				email: true
			},
			"data[Student][document]": {
				required: true,
				number: true
			},
			"data[Student][cellphone]": {
				required: true,
				number: true
			},
			"data[Student][birtdate]": {
				required: true,
				date: true	
			},
			"data[LaborState][telephone]": {
				required: true,
				number: true
			},
			
		}

		,
		highlight: function(label) {
			$(label).closest('.control-group').addClass('error');
		}

		,
		success: function(label) {
			label
				//.text('OK!').addClass('valid')
				.closest('.control-group').addClass('success');
		}
	});
});
		*/

/*

$('#contact-form').validate({
rules: {
	name: {
		minlength: 2,
		required: true
	},
	email: {
		required: true,
		email: true
	},
	subject: {
		minlength: 2,
		required: true
	},
	message: {
		minlength: 2,
		required: true
	}
},
highlight: function(label) {
	$(label).closest('.control-group').addClass('error');
},
success: function(label) {
	label
		.text('OK!').addClass('valid')
		.closest('.control-group').addClass('success');
}
*/
});