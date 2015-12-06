<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Roster extends Application
{
	public function __construct() 
	{
        parent::__construct();
    }

    /**
     * Controller for the roster page
     */
    public function index()
    {
        $this->data['pagebody'] = 'roster/rosterview';    // this is the view we want show

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

        $roster = $this->playerroster->fetch_players($config['per_page'], $page);
        $str_links = $this->pagination->create_links();
        $this->data['saintroster'] = $roster;
        $this->data['pagination_links'] = $str_links;
        
        
        $this->render();
    }	
    
    public function show($id)
    {
        $player = $this->playerroster->get($id);

        $this->data['pagebody'] = 'roster/show';
        $this->data['title'] = 'Team Roster - ' . $player->Name;
    }

    function order($type) {

    }
    
    function create()
    {
            $player = new stdClass();
            $player->Id = 0;
            $player->Number = '';
            $player->Name = '';
            $player->Pos = '';
            $player->Status = '';
            $player->Height = '';
            $player->Weight = '';
            $player->Birthdate = '';
            $player->Exp = '';
            $player->College = '';
            $this->edit(null, $player);
    }

    function edit($id = null, $changes = null)
    {
            $this->data['pagebody'] = 'roster/edit';
            $this->data['title'] = 'Team Roster - Edit Player';
            $this->data['errors'] = array();
            $this->data['error_message'] = '';


            if ($changes == null)
                    $player = $this->playerroster->get($id);
            else
                    $player = $changes;

            if ($player == null) {
                    $this->load->view('roster');
                    return;
            }
            foreach ($player as $key => $val) {
                    $this->data[$key] = $val;
            }

            $this->render();
    }
    function save($id)
    {
        // If no id specified, display error
        if ($id == null) {
            $this->load->view('error');
            return;
        }

        $player = null;

        if ((int)$id == 0) {
            $player = $this->playerroster->create();
        } else {
            $player = $this->playerroster->get($id);
        }

        // Get all fields assigned to player and check for empties
        $emptyFields = array();
        foreach($this->input->post() as $key => $val) {
            if (empty($val))
                $emptyFields[] = array('field' => $key);
            $player->{$key} = $val;
        }

        // Make sure all fields were filled out
        if (!empty($emptyFields)) {
            $this->edit(null, $player, $emptyFields);
        }

        // Either save or update
        if ((int)$id == 0) {
            $this->playerroster->add($player);
            if ($this->input->post('photo') === null) {
                copy(getcwd() . '/assets/img/players/0.png', getcwd() . '/assets/img/players/' . $this->db->insert_id() . '.png');
            }
            $this->show($this->db->insert_id());
        } else {
            $this->playerroster->update($player);
            $this->show($id);
        }
    }
    function delete($id)
    {
            $player = $this->playerroster->get($id);
            $this->playerroster->delete($id);
            $this->session->deleteconfirm = $player->Name . ' has been deleted.';
            unlink(getcwd() . '/assets/img/players/' . $id . '.png');
            redirect($_SERVER['HTTP_REFERER']);
    }
}
