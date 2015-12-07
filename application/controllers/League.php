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
        $this->data['pagebody'] = 'league/league';
        $ordertype = $this->input->post('leagueorder');
        $league = $this->standing->allteams($ordertype);
        $this->data['teams'] = $league;
        $this->render();    
    }

    public function conference() {
        $this->data['pagebody'] = 'league/conference';
        $ordertype = $this->input->post('conferenceorder');
        $afc = $this->standing->conference('AFC', $ordertype);
        $nfc = $this->standing->conference('NFC', $ordertype);
        $this->data['afcteams'] = $afc;
        $this->data['nfcteams'] = $nfc;
        $this->render();
    }

    public function division() {
        $this->data['pagebody'] = 'league/division';
        $ordertype = $this->input->post('divisionorder');
        $afceast = $this->standing->division('AFC', 'East', $ordertype);
        $afcnorth = $this->standing->division('AFC', 'North', $ordertype);
        $afcsouth = $this->standing->division('AFC', 'South', $ordertype);
        $afcwest = $this->standing->division('AFC', 'West', $ordertype);
        $nfceast = $this->standing->division('NFC', 'East', $ordertype);
        $nfcnorth = $this->standing->division('NFC', 'North', $ordertype);
        $nfcsouth = $this->standing->division('NFC', 'South', $ordertype);
        $nfcwest = $this->standing->division('NFC', 'West', $ordertype);
        $this->data['afceast'] = $afceast;
        $this->data['afcnorth'] = $afcnorth;
        $this->data['afcsouth'] = $afcsouth;
        $this->data['afcwest'] = $afcwest;
        $this->data['nfceast'] = $nfceast;
        $this->data['nfcnorth'] = $nfcnorth;
        $this->data['nfcsouth'] = $nfcsouth;
        $this->data['nfcwest'] = $nfcwest;
        $this->render();
    }
}
