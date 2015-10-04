<?php

class Playerroster extends CI_Model
{
    function __construct() {
        parent::__construct();
    }

    // Returns the players array
    function all() {
        return $this->players;
    }
    //Players on the roster
    var $players = array(
        array(
            'id'      => '1',
            '#'       => '1',
            'name'    => 'John, Smith',
        ),
    );

}