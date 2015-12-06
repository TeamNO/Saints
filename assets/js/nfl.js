$('#predictButton').click(function() {
    $.ajax({
        url: "/welcome/predict",
        success: function(result)
        {
            $('#predictionP').html(result);
        },
        error: function(xhr)
        {
            $('#predictionP').html('error message.' + xhr.status + '' + xhr.statusText);
        }
    });
});
