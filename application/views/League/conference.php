<div id="headtitle" class="row">
    <div class="large-9 columns" role="content">
        <div class="row">
            <ul class="button-group">
            <!-- buttons to display the sub pages in the league controller -->
                <li><a href='/league' class="button">League</a></li>
                <li><a href='/league/conference' class="button">Conference</a></li>
                <li><a href='/league/division' class="button">Division</a></li>
            </ul>
            <p>Order By...</p>
            <!-- post the selected option in the dropdown menu on change -->
            <form action="conference" method="post">
                <select name="conferenceorder" id="conferenceorder" onchange="this.form.submit()">
                    <option>-</option>
                    <option value="City">City</option>
                    <option value="Net">Standing</option>
                    <option value="Team">Team</option>
                </select>
            </form>
            <div class="col-md-12">
                <h1>AFC</h1>
                <table id="leagues" border="1px" class="display" cellspacing="0" width="100%">
                    <th>TEAM</th>
                    <th>CITY</th>
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
                        {afcteams}
                            <tr>
                                <td>{Team}</td>
                                <td>{City}</td>
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
                        {/afcteams}
                    </tbody>
                </table> 
            </div>
            <div class="col-md-12">
                <h1>NFC</h1>
                <table id="leagues" border="1px" class="display" cellspacing="0" width="100%">
                    <th>TEAM</th>
                    <th>CITY</th>
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
                        {nfcteams}
                            <tr>
                                <td>{Team}</td>
                                <td>{City}</td>
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
                        {/nfcteams}
                    </tbody>
                </table> 
            </div>
        </div>
    </div>
</div>
