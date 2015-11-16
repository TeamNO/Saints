<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * League page
 */
class League extends Application {
   
    public function __construct() {
        parent::__construct();
    }
    
    /**
     * Display the league page and iterate over the teams data set.
     */
    public function index()
    {
        $this->data['pagebody'] = 'league';
        $this->load->model('PlayerRoster');
        $source = $this->PlayerRoster->all();
        
        //asort($teams);
        $this->data['teams'] = $source;
        $this->render();
    }
}
