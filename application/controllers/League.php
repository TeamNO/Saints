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

        $league = $this->standing->all();
        $this->data['teams'] = $league;
        $this->render();    
    }

    public function conference() {
        $this->data['pagebody'] = 'league/conference';
        $afc = $this->standing->conference('AFC');
        $nfc = $this->standing->conference('NFC');
        $this->data['afcteams'] = $afc;
        $this->data['nfcteams'] = $nfc;
        $this->render();
    }

    public function division() {
        $this->data['pagebody'] = 'league/division';
        $afceast = $this->standing->division('AFC', 'East');
        $afcnorth = $this->standing->division('AFC', 'North');
        $afcsouth = $this->standing->division('AFC', 'South');
        $afcwest = $this->standing->division('AFC', 'West');
        $nfceast = $this->standing->division('NFC', 'East');
        $nfcnorth = $this->standing->division('NFC', 'North');
        $nfcsouth = $this->standing->division('NFC', 'South');
        $nfcwest = $this->standing->division('NFC', 'West');
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
