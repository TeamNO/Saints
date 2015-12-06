<div id="headtitle" class="row">
    <div class="large-9 columns" role="content">
        <div class="row">
            <ul class="button-group">
                <li><a href='/league' class="button">League</a></li>
                <li><a href='/league/conference' class="button">Conference</a></li>
                <li><a href='/league/division' class="button">Division</a></li>
            </ul>
            <div class="col-md-12">
                <table id="leagues" border="1px" class="display" cellspacing="0" width="100%">
                    <th>TEAM</th>
                    <th>CONF</th>
                    <th>DIV</th>
                    <th>W</th>
                    <th>L</th>
                    <th>T</th>
                    <th>Pct</th>
                    <th>PF</th>
                    <th>PA</th>
                    <th>Net</th>
                    <th>TD</th>
                    <th>HOME</th>
                    <th>ROAD</th>
                    <th>DIV</th>
                    <th>PCT</th>
                    <th>CONF</th>
                    <th>PCT</th>
                    <th>NON-CONF</th>
                    <th>STREAK</th>
                    <th>LAST 5</th>
                       <!-- This is where the roster model data is displayed. Will display all the players in the roster.-->
                        {teams}
                            <tr>
                                <td>{Team}</td>
                                <td>{cName}</td>
                                <td>{dName}</td>   
                                <th>{W}</th>
                                <th>{L}</th>
                                <th>{T}</th>
                                <th>{oPct}</th>
                                <th>{PF}</th>
                                <th>{PA}</th>
                                <th>{Net}</th>
                                <th>{TD}</th>
                                <th>{Home}</th>
                                <th>{Road}</th>
                                <th>{Division}</th>
                                <th>{dPct}</th>
                                <th>{Conf}</th>
                                <th>{cPct}></th>
                                <th>{NonConf}</th>
                                <th>{Streak}</th>
                                <th>{Last5}</th>                                     
                            </tr>
                        {/teams}
                    </tbody>
                </table> 
            </div>
        </div>
    </div>
</div>
