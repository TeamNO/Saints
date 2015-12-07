<div id="headtitle" class="row"> 
    <div class="large-9 columns" role="content">
        <h1><a href="#">Welcome to the New Orleans Saints</a></h1>      
            <div class="row">
                <p>This is the home page of the New Orleans Saints!</p>
                <div>
                    <form id="predictionform">
                        <div class="row">
                            <div class="large-12 columns">
                                <label>Select Opponent</label>
                                <select name="leagueteams" style="max-width: 300px">
                                    {teamnames}
                                    <option value={TLC}>{Team}</option>
                                    {/teamnames}
                                </select>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="large-12 columns">
                                <button type="submit" >Predict!</button>
                                
                            </div>
                        </div>
                    </form>
                    <div id="results" style ="color:white">
                    </div>
                    <div>
                        <h3 style="color:white"> Prediction Explanation</h3>
                        <p> Prediction uses this formula to predict the games. <br>
                            70% * (overall average) + 20% * (last 5 games average) + 10% * (average of last 5 games against this opponent).
                    </div>
                </div>

            </div>
    </div>
</div> 

<script>
    $( "#predictionform" ).submit(function( event ) {
        event.preventDefault();

        $('#results').empty();

        var $form = $(this);
        var url = 'Welcome/predict';
        var data = {};
        data['leagueteams'] = $form.find("select[name='leagueteams']").val();
        $.post(url, data, function(result) {
            $('#predictionform').hide();
            $('#results').empty();
            $('#results').append('<h3 style="color:white">' + result + '</h3>');        
        })
        .fail(function() {
            $('#results').empty();
            alert( "Post failed." );
        });
    });

</script>