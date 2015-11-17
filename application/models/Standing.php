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
    }

    function all() {
        $CI = &get_instance();
        $query = $CI->db->get('standing');
        return $query->result_array();
    }
}
