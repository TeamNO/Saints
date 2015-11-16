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
        $roster = $this->PlayerRoster->all();
        $this->data['saintroster'] = $roster;
        $this->render();
		
    }
}
