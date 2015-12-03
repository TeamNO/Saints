/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$('#predictButton').click(function(){
    $.ajax({
        url: "/welcome/predict",
        success: function(result)
        {
            $('#predictionDiv').html(result);
        },
        error: function(xhr)
        {
            $('#predictionDiv').html('error message.' + xhr.status + '' + xhr.statusText);
        }
    });
});


