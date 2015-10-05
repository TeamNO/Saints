<?php

if(!defined('APPPATH'))
    exit('No direct script access allowed');

/**
 * Helper functions
 */

/**
 * Build a menu bar
 * @param type $menu Associated array of menu names.
 * @return string
 */
function build_menu_bar($menu) {
    $result = '<ul>';
    
    foreach($menu as $name => $link) {
        $result .= '<li>' .anchor($link, $name) . '</li>';
    }
    
    $result .= '</ul>';
    
    return $result;
    
}