
<div id="headtitle" class="row"> 
    <div class="large-9 columns" role="content">
        <h1><a href="#">Welcome to the New Orleans Saints</a></h1>      
            <div class="row">
                <p>This is the home page of the New Orleans Saints!</p>
                <div>
                    <form id="prediction">
                        <div class="row">
                            <div class="large-12 columns">
                                <h3 style="color:white"> Saint's Opponents</h3>
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
                                <h4 style='color:white'> This button will predict the chances of victory against an enemy team. </h4>
                                <button type="submit" >Predict!</button>
                                
                            </div>
                        </div>
                    </form>
                    <div id="results" style ="color:white">
                    </div>
                    <div>
                        <h3 style="color:White"> Prediction Explanation</h3>
                        <p style="color:white"> Prediction uses this formula to predict the games. <br>
                            70% * (overall average) + 20% * (last 5 games average) + 10% * (average of last 5 games against this opponent).
                    </div>
                    <br>
                    <h3 style="color:White">Database Stuff with XMLRPC</h3>
                    <form id="updateDBForm">
                    
                        <br>
                        
                        <p style="color:white">Delete DB Data and reset it. </p>
                        
                        <input type="checkbox" name="dbreset" />

                        <br>
                        <button type="submit">Update via Webservice</button>
                        <br>
                    </form>
                        <div id="update-db-results">
                        </div>
                      
                </div>

            </div>
    </div>
</div> 

<script>
     $("#updateDBForm").submit(function( event) {
        event.preventDefault();
        
        $('#update-db-results').empty();
        
        var $form = $(this);
        var url = 'Welcome/updateStandings';
        var data = {};
        data['dbreset'] = $form.find("input[name='dbreset']").prop('checked');
        $.post(url, data, function(result) {
            $('#update-db-results').empty();
            $('#update-db-results').append(result);
        })
        .fail(function() {
            $('#update-db-results').empty();
            alert( "Post failed." );
        });
    });
    
    $( "#prediction" ).submit(function( event ) {
        event.preventDefault();

        $('#results').empty();

        var $form = $(this);
        var url = 'Welcome/predict';
        var data = {};
        data['leagueteams'] = $form.find("select[name='leagueteams']").val();
        $.post(url, data, function(result) {
            $('#predictionform').hide();
            $('#results').empty();
            $('#results').append('<h2 style="color:yellow">' + result + '</h3>');        
        })
        .fail(function() {
            $('#results').empty();
            alert( "Post failed." );
        });
    });

</script>