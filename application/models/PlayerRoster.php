<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Roster
 *
 * @author a00860087
 */
class PlayerRoster extends MY_Model{
    //put your code here
    function __construct() {
        parent::__construct('roster', 'Id');
    }

    /**
     * Returns a segment of records
     */
    function get_roster_range($offset, $start) {
        $query = $this->db->get('roster', $offset, $start);
        return $query->result_array();
    }

    /**
     * Returns total amount of roster rows in db
     */
    function count() {
        return $this->db->get('roster')->num_rows();
    }

    
    function all(){
        $CI = &get_instance();
        $query = $CI->db->get('roster');
        return $query->result_array();
    }

    function record_count() {
    	$CI = &get_instance();
    	return $CI->db->count_all('roster');
    }

    function fetch_players($limit, $start, $ordertype) {
    	$CI = &get_instance();
        $CI->db->order_by($ordertype, "asc");
    	$CI->db->limit($limit, $start);
    	$query = $CI->db->get('roster');

    	if($query->num_rows()>0) {
    		foreach($query->result() as $row) {
    			$data[] = $row;
    		}
    		return $data;
    	}
    	return false;
    }
}
