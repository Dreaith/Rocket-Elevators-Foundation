$("#building_id").prop("disabled", true); // second dropdown is disable while first dropdown is empty
$("#customer_id").change(function(){
  	var project = $(this).val();
  	if(project == ''){
  		$("#building_id").prop("disabled", true);
  	}else{
  		$("#building_id").prop("disabled", false);
  	}
  	$.ajax({
	    url: "/interventions",
	    method: "GET",  
	    dataType: "json",
	    data: {getBuilding: customer_id},
	    error: function (xhr, status, error) {
	      	console.error('AJAX Error: ' + status + error);
	    },
	    success: function (response) {
	      	console.log(response);
	      	var buildings = response["buildings"];
	      	$("#building_id").empty();

	      	$("#building_id").append('<option>Select Building</option>');
	      	for(var i = 0; i < buildings.length; i++){
	      		$("#building_id").append('<option value="' + buildings[i]["id"] + '">' +buildings[i]["full_name_of_the_building_administrator"] + '</option>');
	      	}
	    }
  	});
});