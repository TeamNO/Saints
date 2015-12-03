<div class="row">
    <div class="columns small-12 roster">
        <h1>Team Roster - Edit</h1>
    </div>

    <div class="columns small-12 medium-3">
        <div class="playerphoto" style="position: relative; padding: 0">
            <span>{Name}</span>
            <img src="" />
            <span>{Number}</span>
           
        </div>
        <br>
    </div>

   <div class="columns small-12 medium-9">
        <form action="/roster/save/{Id}" method="post">



            <div class="row" style="max-width: 500px">
                <div>
                    <label><p style="color: white">Name</p>
                        <input id="Name" name="Name" type="text" placeholder="" value="{Name}" required autofocus>
                    </label>
                </div>
                <div>
                    <label><p style="color: white">Position</p>
                        <input id="Pos" name="Pos" type="text" placeholder="" value="{Pos}" required autofocus>
                    </label>
                </div>
                 <div>
                    <label><p style="color: white">Status</p>
                        <input id="Status" name="Status" type="text" placeholder="" value="{Status}" required autofocus>
                    </label>
                </div>

            </div>

            <div class="row" style="max-width: 500px">

                <div>
                    <label><p style="color: white">Height</p>
                        <input id="Height" name="Height" type="text" placeholder="" value="{Height}" required autofocus>
                    </label>
                </div>
                <div>
                    <label><p style="color: white">Weight</p>
                        <input id="Weight" name="Weight" type="text" placeholder="" value="{Weight}" required autofocus>
                    </label>
                </div>
                <div>
                    <label><p style="color: white">Birth Date</p>
                        <input id="Birthdate" name="Birthdate" type="date" value="{Birthdate}" required>
                    </label>
                </div>
            </div>

            <div class="row" style="max-width: 500px">
                <div>
                    <label><p style="color: white">Experience</p>
                        <input id="Exp" name="Exp" type="text" placeholder="" value="{Exp}" required autofocus>
                    </label>
                </div>
                <div>
                    <label><p style="color: white">College</p>
                        <input id="College" name="College" type="text" placeholder="" value="{College}" required autofocus>
                    </label>
                </div>
                <div class="row" style="max-width: 500px">
                    <div class="columns small-6">
                        <label><br><p style="color: white">Jersey Number</p>
                            <input id="Number" name="Number" type="number" min="1" max="200" step="1" value="{Number}" style="max-width: 80px">
                        </label>
                    </div>
                </div>
                <div>
                    <br>
                    <button type="submit">Save</button>
                    <br>
                </div>
            </div>

        </form>
    </div>

</div>

<br>
