
<div id="headtitle" class="row">
 
<div class="large-9 columns" role="content">
<article>
<h3><a href="#">Team Roster</a></h3>
<h6>Written by Kevin Thet</h6>
<div class="row">
<div class="large-6 columns">
<p>THE SAINTS</p>
<div class="row">
    <div class="col-md-12 roster">
        <h1>Team Roster For New Orleans Saints</h1>
        <a href>ADD PLAYER</a>
        <table id="rostertable" border="1px" class="display" cellspacing="0" width="100%">
             <th border="1px">
                <td class="table_titles">JERSEY</td>
                <td class="table_titles">NAME</td>
                <td class="table_titles">POSITION</td>
                <td class="table_titles">HEIGHT</td>
                <td class="table_titles">WEIGHT</td>
                <td class="table_titles">EXP</td>
                <td class="table_titles">COLLEGE</td>
            </th>
           <tbody>
               <!-- This is where the roster model data is displayed. Will display all the players in the roster.-->
                {saintroster}
                    <tr>
                        <td></td>
                        <td>{Id}</td>
                        <td>{Name}</td>
                        <td>{Pos}</td>
                        <td>{Height}</td>
                        <td>{Weight}</td>
                        <td>{Exp}</td>
                        <td>{College}</td>
                        <td><a href>edit</a></td>
                        <td><a href>delete</a></td>
                    </tr>
                {/saintroster}
            </tbody>
        </table>
    </div>
</div>
</div>
<div class="large-6 columns">
    <br />
    <br />
    <!--<img src="../../assets/img/index.jpg"/>-->
</div>
</div>
</article>
<hr/>

</div>

 
</div>
 
 
<footer class="row">
<div class="large-12 columns">
<hr/>
<div class="row">
<div class="large-6 columns">
<p>&copy; Saints Team Roster</p>
</div>
