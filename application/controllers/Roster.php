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
        $config['full_tag_open'] = '<ul class="tsc_pagination tsc_paginationA tsc_paginationA01">';
        $config['full_tag_close'] = '</ul>';
        $config['prev_link'] = '&lt;';
        $config['prev_tag_open'] = '<li>';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '&gt;';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="current"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['first_link'] = '&lt;&lt;';
        $config['last_link'] = '&gt;&gt;';

        $this->pagination->initialize($config);

        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;

        //$data['saintroster'] = $this->playerroster->fetch_players($config['per_page'], $page);
        $roster = $this->playerroster->fetch_players($config['per_page'], $page);
        $str_links = $this->pagination->create_links();
        $this->data['saintroster'] = $roster;
        $this->data['pagination_links'] = $str_links;
        $this->render();

        //$roster = array();
        //$roster = $this->playerroster->all();
        //$this->data['saintroster'] = $roster;
        //$this->render();	
    }
}
