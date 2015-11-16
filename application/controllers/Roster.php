<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Roster extends Application
{
    /**
     * Controller for the roster page
     */
    public function index()
    {
        $this->data['pagebody'] = 'rosterview';    // this is the view we want shown
        $players = $this->playerroster->all();
        $this->parser->parse('rosterview', $players);
        $this->render();
		
    }
}
