<div id="headtitle" class="row">
    <div class="large-9 columns" role="content">
        <div class="row">
            <div class="col-md-12">
            <p>Order By...</p>
            <select name="orderbox" id="orderbox" onchange="this.form.submit()">
                <option value="name">name</option>
                <option value="jersey">jersey</option>
                <option value="position">position</option>
            </select>
                <table id="roster" border="1px" class="display" cellspacing="0" width="100%">
                    <th>JERSEY</th>
                    <th>NAME</th>
                    <th>POSITION</th>
                    <th>HEIGHT</th>
                    <th>WEIGHT</th>
                    <th>EXP</th>
                    <th>COLLEGE</th>
                    <tbody>
                       <!-- This is where the roster model data is displayed. Will display all the players in the roster.-->
                        {saintroster}
                            <tr>
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
                <ul class="tsc_pagination tsc_paginationA tsc_paginationA01">
                    {pagination_links}
                </ul>
            </div>
        </div>
    </div>
</div>
