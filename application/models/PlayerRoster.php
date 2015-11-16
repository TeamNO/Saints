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
class PlayerRoster extends My_Model{
    //put your code here
     function __construct() {
        parent::__construct('roster', 'id');
    }
    
    function all(){
        $CI = &get_instance();
        $query = $CI->db->get('roster');
        return $query->result();
    }
}
