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
        $this->load->model('Playerroster');     //Loads the model playerroster just in case the autoload did not load it.
        $this->data['saintroster'] = $this->Playerroster->all();    //Calls the function all inside the roster model and passes the data to saintroster in the view
        //$this->modelname->functionname() 
        $this->render();
		
    }
}
