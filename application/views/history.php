<div id="headtitle" class="row">
    <div class="large-9 columns" role="content">
        <div class="row">
            <div class="col-md-12">
                <table id="leagues" border="1px" class="display" cellspacing="0" width="100%">
                    <th>TEAM</th>
                    <th>DATE</th>
                    <th>SCORE</th>
                    <th>OPPONENT</th>
                       <!-- This is where the roster model data is displayed. Will display all the players in the roster.-->
                        {teams}
                            <tr>
                                <td>{Id}</td>
                                <td>{Team}</td>
                                <td>{Conf}</td>
                                <td>{Division}</td>                                        
                            </tr>
                        {/teams}
                    </tbody>
                </table> 
            </div>
        </div>
    </div>
</div>
