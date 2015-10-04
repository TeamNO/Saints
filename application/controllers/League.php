<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * League page
 */
class League extends Application {
   
    public function index()
    {
        $this->data['pagebody'] = 'league';
        $this->render();
    }
}
