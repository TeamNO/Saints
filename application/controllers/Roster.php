<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Roster extends Application
{
    /**
     * Controller for the roster page
     */
    public function index()
    {
        $this->load->model('PlayerRoster'); 
        $this->load->view('Roster');
        $this->data['saintroster'] = $this->Playerroster->all();
        
        $this->render();
		//$this->modelname->functionname() 
    }
}
