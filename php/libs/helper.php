<?php 

function redirect($path) {

    if($path === GO_HOME) {

        $path = get_url('');

    } else if($path === GO_REFERER) {

        $path = $_SERVER['HTTP_REFERER'];

    } else {

        $path = get_url($path);

    }
    
    header("Location: {$path}");

    die();

}

function the_url($path) {
    echo get_url($path);
}

function get_url($path) {

    return BASE_CONTEXT_PATH . trim($path, '/');

}