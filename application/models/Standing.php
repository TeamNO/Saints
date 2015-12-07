<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Standing
 *
 * @author a00860087
 */
class Standing extends My_Model{
    //put your code here
        function __construct() {
        parent::__construct('standing', 'id');
        $this->load->library('xmlrpc');
        $this->xmlrpc->server("nfl.jlparry.com/rpc", 80);
	$this->xmlrpc->method('since');
        $request = array('19321203');
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
        $CI = &get_instance();
        $query = $CI->db->get('standing');
        return $query->result_array();
    }
}
