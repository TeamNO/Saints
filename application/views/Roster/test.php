<div class="row">
    <div class="columns small-12 roster">
        <h1>Team Roster: Player Details</h1>
    </div>
</div>

<div class="row">

    <div class="columns small-12 medium-3">
        <div class="playerphoto">
            <span class="player-name-in-photo animated fadeIn">{Name}</span>
            <img src="/assets/img/players/{Id}.png" />
            <span class="player-number-in-photo animated infinite pulse">{Number}</span>
        </div>
    </div>

    <div class="columns small-12 medium-9">

        <div class="row" style="max-width: 500px">
            <div class="columns small-6">
                <b>Number:</b> <br>{Number}<br><br>
            </div>
            <div class="columns small-6">
                <br><br>
            </div>
        </div>

        <div class="row" style="max-width: 500px">
            <div class="columns small-6">
                <b>Name:</b> <br>{Name}<br><br>
            </div>
            <div class="columns small-6">
                <b>Position:</b> <br>{Pos}<br><br>
            </div>

        </div>

        <div class="row" style="max-width: 500px">
            <div class="columns small-6">
                <b>Status:</b> <br>{Status}<br><br>
            </div>
            <div class="columns small-6">
                <b>Height:</b> <br>{Height}<br><br>
            </div>
        </div>

        <div class="row" style="max-width: 500px">
            <div class="columns small-6">
                <b>Weight:</b> <br>{Weight} lbs.<br><br>
            </div>
            <div class="columns small-6">
                <b>Birth Date:</b> <br>{Birthdate}<br><br>
            </div>
        </div>

        <div class="row" style="max-width: 500px">
            <div class="columns small-6">
                <b>Experience:</b> <br>{Exp} years<br><br>
            </div>
            <div class="columns small-6">
                <b>College:</b> <br>{College}<br><br>
            </div>
        </div>

        <div class="row" style="max-width: 500px">
            <div class="columns small-12">
                <a href="/roster/edit/{Id}" class="button">Edit</a>
            </div>
        </div>

    </div>


</div>

<br><br>

<script src="/assets/js/jquery.fittext.js"></script>

<script>
    jQuery(".player-name-in-photo").fitText();
</script>