<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Shows the team's history games
 *
 * @author Vincent
 */
class History extends Application{
    
    public function __construct() {
        parent::__construct();
    }
    
    /**
     * Display the history page
     */
    public function index()
    {
        $this->data['pagebody'] = 'history';

        $this->render();    
    }
}
