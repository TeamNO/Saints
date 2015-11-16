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
        $this->load->model('PlayerRoster');     //Loads the model Roster just in case the autoload did not load it.
        $this->data['saintroster'] = $this->PlayerRoster->all();    //Calls the function all inside the roster model and passes the data to saintroster in the view
        //$this->PlayerRoster->functionname();
        $this->render();
		
    }
}
