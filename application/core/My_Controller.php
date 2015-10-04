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
        $this->data['content'] = $this->parser->parse($this->data['pagebody'], $this->data, true);
        $this->data['data'] = &$this->data;
        $this->parser->parse('_template', $this->data);
    }
}