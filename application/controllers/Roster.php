<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Roster extends Application
{
    /**
     * Controller for the roster page
     */
    public function index()
    {
        $this->data['pagebody'] = 'Rosterview';    // this is the view we want shown
        $this->load->model('Playerroster'); 
        $this->data['saintroster'] = $this->Playerroster->all();
        
        $this->render();
		//$this->modelname->functionname() 
    }
}
