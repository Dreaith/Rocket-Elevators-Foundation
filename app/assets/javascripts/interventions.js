// $("#intervention_customer_id").on("change", function(){
//   $.ajax({
//     url: "/interventions/get_building",
//     method: "GET",
    
//     dataType: "json",
//     data: {get_building: customer_id},
//     error: function (xhr, status, error) {
//         console.error('AJAX Error: ' + status + error);
//     },
//     success: function (response) {
//         console.log(response);
//         $("#intervention_customer_id").val()
//         var buildings = response['get_building'];
//         console.log(response)
//         $("#intervention_building_id").

//         $("#intervention_building_id").append('<option>Select Building</option>');
//         for(var i = 0; i < buildings.length; i++){
//             $("#intervention_building_id").append("<option value=" + buildings[i].id + '>' +buildings[i].id + '</option>');
//         }
//     }
// }
// );

// console.log('ok');
  
// })
