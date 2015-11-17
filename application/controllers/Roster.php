<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Roster extends Application
{
    /**
     * Controller for the roster page
     */
    public function index()
    {
        $this->data['pagebody'] = 'rosterview';    // this is the view we want show

        // setting up pagination
        $config = array();
        $config['base_url'] = '/roster/index';
        $config['total_rows'] = $this->playerroster->record_count();
        $config['per_page'] = 12;
        $config['uri_segment'] = 3;

        $this->pagination->initialize($config);

        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        //$data['saintroster'] = $this->playerroster->fetch_players($config['per_page'], $page);
        $roster = $this->playerroster->fetch_players($config['per_page'], $page);
        echo $this->pagination->create_links();
        $this->data['saintroster'] = $roster;
        $this->render();

        //$roster = array();
        //$roster = $this->playerroster->all();
        //$this->data['saintroster'] = $roster;
        //$this->render();	
    }
}
