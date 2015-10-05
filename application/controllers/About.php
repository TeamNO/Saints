<?php

/* 
 * About page.
 */

class About extends Application {
   
    public function __construct() {
        parent::__construct();
    }
    
    public function index()
    {
        $this->data['pagebody'] = 'about';
        
        $this->render();
    }
}