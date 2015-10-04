<?php

class Teams extends CI_Model {
 
    /**
     * Teams in NFL
     * @var type 
     */
    var $data = array(
        // American Football Conference
        // North
        array('id' => 'BAL', 'conf' => 'AFC', 'div' => 'North', 'team' => 'Baltimore Ravens'),
        array('id' => 'CIN', 'conf' => 'AFC', 'div' => 'North', 'team' => 'Cincinnati Bengals'),
        array('id' => 'CLE', 'conf' => 'AFC', 'div' => 'North', 'team' => 'Cleveland Browns'),
        array('id' => 'PIT', 'conf' => 'AFC', 'div' => 'North', 'team' => 'Pittsburgh Steelers'),
        // South
        array('id' => 'HOU', 'conf' => 'AFC', 'div' => 'South', 'team' => 'Houston Texans'),
        array('id' => 'IND', 'conf' => 'AFC', 'div' => 'South', 'team' => 'Indianapolis Colts'),
        array('id' => 'JAC', 'conf' => 'AFC', 'div' => 'South', 'team' => 'Jacksonville Jaguars'),
        array('id' => 'TEN', 'conf' => 'AFC', 'div' => 'South', 'team' => 'Tennessee Titans'),
        // East
        array('id' => 'BUF', 'conf' => 'AFC', 'div' => 'East', 'team' => 'Buffalo Bills'),
        array('id' => 'MIA', 'conf' => 'AFC', 'div' => 'East', 'team' => 'Miami Dolphins'),
        array('id' => 'NE', 'conf' => 'AFC', 'div' => 'East', 'team' => 'New England Patriots'),
        array('id' => 'NYJ', 'conf' => 'AFC', 'div' => 'East', 'team' => 'New York Jets'),
        // West
        array('id' => 'DEN', 'conf' => 'AFC', 'div' => 'West', 'team' => 'Denver Broncos'),
        array('id' => 'KC', 'conf' => 'AFC', 'div' => 'West', 'team' => 'Kansas City Chiefs'),
        array('id' => 'OAK', 'conf' => 'AFC', 'div' => 'West', 'team' => 'Oakland Raiders'),
        array('id' => 'SD', 'conf' => 'AFC', 'div' => 'West', 'team' => 'San Diego Chargers'),
        
        // National Football Conference
        // North
        array('id' => 'CHI', 'conf' => 'NFC', 'div' => 'North', 'team' => 'Chicago Bears'),
        array('id' => 'DET', 'conf' => 'NFC', 'div' => 'North', 'team' => 'Detriot Lions'),
        array('id' => 'GB', 'conf' => 'NFC', 'div' => 'North', 'team' => 'Green Bay Packers'),
        array('id' => 'MIN', 'conf' => 'NFC', 'div' => 'North', 'team' => 'Minnesota Vikings'),
        // South
        array('id' => 'ATL', 'conf' => 'NFC', 'div' => 'South', 'team' => 'Atlanta Falcons'),
        array('id' => 'CAR', 'conf' => 'NFC', 'div' => 'South', 'team' => 'Carolina Panthers'),
        array('id' => 'NO', 'conf' => 'NFC', 'div' => 'South', 'team' => 'New Orleans Saints'),
        array('id' => 'TB', 'conf' => 'NFC', 'div' => 'South', 'team' => 'Tampa Bay Buccaneers'),
        // East
        array('id' => 'DAL', 'conf' => 'NFC', 'div' => 'East', 'team' => 'Dallas Cowboys'),
        array('id' => 'NYG', 'conf' => 'NFC', 'div' => 'East', 'team' => 'New York Giants'),
        array('id' => 'PHI', 'conf' => 'NFC', 'div' => 'East', 'team' => 'Philadelphia Eagles'),
        array('id' => 'WAS', 'conf' => 'NFC', 'div' => 'East', 'team' => 'Washington Redskins'),
        // West
        array('id' => 'ARI', 'conf' => 'NFC', 'div' => 'West', 'team' => 'Arizona Cardinals'),
        array('id' => 'SF', 'conf' => 'NFC', 'div' => 'West', 'team' => 'San Francisco 49ers'),
        array('id' => 'SEA', 'conf' => 'NFC', 'div' => 'West', 'team' => 'Seattle Seahawks'),
        array('id' => 'STL', 'conf' => 'NFC', 'div' => 'West', 'team' => 'St. Louis Rams')
    );
    
    /**
     * CTOR.
     */
    public function __construct() {
        parent::__construct();
    }
    
    public function get_all_teams() {
        return $this->data;
    }
    
    /**
     * Gets an individual team based on their ID.
     * @param type $id
     * @return type
     */
    public function get_team($id) {
        foreach($this->data as $record) {
            if($record['id'] == $id) {
                return $record;
            }
        } 
        return null;
    }
}