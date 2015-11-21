<div id="headtitle" class="row">
    <div class="large-9 columns" role="content">
        <div class="row">
            <div class="col-md-12">
                <table id="leagues" border="1px" class="display" cellspacing="0" width="100%">
                    <th border="1px">
                    <td class="table_titles">ID</td>
                    <td class="table_titles">TEAM</td>
                    <td class="table_titles">CONFERENCE</td>
                    <td class="table_titles">DIVISION</td>
                    <tbody>
                       <!-- This is where the roster model data is displayed. Will display all the players in the roster.-->
                        {teams}
                            <tr>
                                <td></td>
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
