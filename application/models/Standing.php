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
    //put your code here
        function __construct() {
        parent::__construct('standing', 'id');
    }
    
    /**
    * Get all teams in league.
    */
    function allteams($ordertype) {
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
