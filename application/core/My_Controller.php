<?php

/**
 * Default controller
 */

class Application extends CI_Controller {
    
    protected $data = array();
    protected $menu = array('Home' => '/','Roster' => 'roster', 'League' => 'league', 'About' => 'about');
    
    function __construct() {
        parent::__construct();
        $this->data = array();
        $this->data['title'] = 'Saints';
    }
    
    function render() {
        $this->data['menubar'] = build_menu_bar($this->menu);
        $this->parser->parse('_template', $this->data);
    }
}