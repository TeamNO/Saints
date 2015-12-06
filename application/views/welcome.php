<div id="headtitle" class="row"> 
    <div class="large-9 columns" role="content">
        <h1><a href="#">Welcome to the New Orleans Saints</a></h1>      
            <div class="row">
                <p>This is the home page of the New Orleans Saints!</p>
                <div>
                    <form>
                        <h3 style="color:white">Opposing Teams</h3>
                            <select name="leagueteams" id="leagueteams">
                            {leagueteams}
                                <option value="{TLC}">{Team}</option>
                            {/leagueteams}
                            </select>
                        <br>
                        <button type="submit" id="predictButton">Predict!</button>
                        <br>
                    </form>
                </div>
                <div>
                    <p id="predictionP"> predictions go here</p>
                </div>
                <p>Here you will find information about the team as well as the league!</p>
            </div>
    </div>
</div> 
