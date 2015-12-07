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
        $this->xmlrpc->server("nfl.jlparry.com/rpc");
        $request = array();
        $this->xmlrpc->request($request);
        $this->xmlrpc->method('since');
        if(!$this->xmlrpc->send_request()) {
            echo $this->xmlrpc->display_error();
        }
    }

    function allteams($ordertype) {
        $CI = &get_instance();
        $CI->db->order_by($ordertype, "asc");
        $query = $CI->db->get('standing');
        return $query->result_array();
    }

    function conference($conf, $ordertype) {
    	$CI = &get_instance();
        $CI->db->order_by($ordertype, "asc");
    	$query = $CI->db->query("SELECT * FROM standing WHERE cName = '$conf';");
    	return $query->result_array();
    }

    function division($conf, $div, $ordertype) {
    	$CI = &get_instance();
        $CI->db->order_by($ordertype, "asc");
    	$query = $CI->db->query("SELECT * FROM standing WHERE cName = '$conf' AND dName = '$div';");
    	return $query->result_array();
    }
}
