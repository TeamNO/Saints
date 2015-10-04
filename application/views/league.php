
<div class="row">
 
<div class="large-9 columns" role="content">
<article>
<h3><a href="#">League Teams</a></h3>
<div class="row">
<div class="large-6 columns">
<p>NFL</p>
<div class="row">
    <div class="col-md-12 roster">
        <h1>All Teams in NFL</h1>
        <table id="rostertable" class="display" cellspacing="0" width="100%">
           <tbody>
               <!-- This is where the roster model data is displayed. Will display all the players in the roster.-->
                {teams}
                    <tr>
                        <td>{id}</td>
                        <td>{conf}</td>
                        <td>{div}</td>
                        <td>{team}</td>
                    </tr>
                {/teams}
            </tbody>
        </table>
    </div>
</div>
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
