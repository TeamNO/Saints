<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
* The league database and it's functions
*/
class Standing extends My_Model{
        function __construct() {
        parent::__construct('standing', 'id');
<<<<<<< HEAD
        // connect to xmlrpc server
        $this->xmlrpc->server("nfl.jlparry.com/rpc");
        $request = array('20150830');
        $this->xmlrpc->request($request);
        $this->xmlrpc->method('since');
        if(!$this->xmlrpc->send_request()) {
            echo $this->xmlrpc->display_error();
        } else {
            $this->xmlresult = $this->xmlrpc->display_response();
        }
    }

    /**
    * Get all teams in league.
    */
    function allteams($ordertype) {
=======
        $this->xmlrpc->server("nfl.jlparry.com/rpc");
	    $this->xmlrpc->method('since');
        $request = array('20150830');
        $this->xmlrpc->request($request);
        if ( ! $this->xmlrpc->send_request()) {
            echo $this->xmlrpc->display_error();
        } else {	
            $this->xmlResult = $this->xmlrpc->display_response();
        }
    }
    
    function updateHistory(){
        $scores = array();
        foreach($this->xmlResult as $data) {
                $data = $this->mapData($data);
                array_push($scores, $data);
        }
    }

    function mapData($source){
        $record = new stdClass();
        //parse home and away team scores by tokenizing the ':' delimiter of xml result
        $scores = explode(":", $source["score"]);
        $record->home = $source['home'];
        $record->date = (new DateTime($source["date"]))->format('Y-m-d');
        $record->homeScore = $scores[0]; //parsed home score
        $record->awayScore = $scores[1]; //parsed away score
        $record->away = $source['away'];
        return $record;
    }
    
    function all() {
>>>>>>> vincent
        $CI = &get_instance();
        $CI->db->order_by($ordertype, "asc");
        $query = $CI->db->get('standing');
        return $query->result_array();
    }

    /**
    * Get all teams in conferences.
    */
    function conference($conf, $ordertype) {
    	$CI = &get_instance();
        $CI->db->order_by($ordertype, "asc");
    	$query = $CI->db->query("SELECT * FROM standing WHERE cName = '$conf';");
    	return $query->result_array();
    }

    /**
    * Get all teams in divisions.
    */
    function division($conf, $div, $ordertype) {
    	$CI = &get_instance();
        $CI->db->order_by($ordertype, "asc");
    	$query = $CI->db->query("SELECT * FROM standing WHERE cName = '$conf' AND dName = '$div';");
    	return $query->result_array();
    }
}
