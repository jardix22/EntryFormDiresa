
$(document).ready(function () {
	$.validator.addMethod(
		"uniqueDocument", 
		function(value, element) {
			$state = false;
			$.ajax({
					type: "POST",
					url: "/entryFormDiresa/Validates/checkDocument",
					data: { term: value },
					dataType:"json",
					async: false,
					success: function(data)
					{
						if(!data.state){
							state = true;  
						}else{
							state = false; 
						}

					}
				}
			)

			return state;
		}, 
		"Su Numero de DNI ya fue registrado"
	);

	$.validator.addMethod(
		"uniqueNumVoucher", 
		function(value, element) {
			$state = false;
			$.ajax({
					type: "POST",
					url: "/entryFormDiresa/Validates/checkNumVoucher",
					data: { term: value },
					dataType:"json",
					async: false,
					success: function(data)
					{
						if(!data.state){
							state = true;  // already exists
						}else{
							state = false;      // username is free to use
						}
					}
				}
			)

			return state;
		}, 
		"Su numero de voucher ya fue registrado"
	);


	$('#inscription-form').validate({
		rules: {
			"data[Inscription][voucher_number]": {
				required: true,
				uniqueNumVoucher: true					
			},
			"data[Person][email]": {
				required: true,
				email: true
			},
			"data[Person][document]": {
				required: true,
				number: true,
				minlength: 8,
				uniqueDocument: true
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
});