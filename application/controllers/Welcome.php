<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Home Page
 */
class Welcome extends Application {
   
    /**
     * CTOR
     */
    public function __construct() {
        parent::__construct();
    }
    
    /**
     * Display the welcome view.
     */
    public function index()
    {
        $this->data['pagebody'] = 'welcome';
        $this->render();
    }
}
