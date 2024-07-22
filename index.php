<?php

use function lib\route;

require_once 'config.php';

//Library
require_once SOURCE_BASE . 'libs/router.php';


//partials
require_once SOURCE_BASE . 'partials/header.php';
require_once SOURCE_BASE . 'partials/footer.php';

session_start();
try {

  \partials\header();

  $url = parse_url(CURRENT_URI);
  $rpath = str_replace(BASE_CONTEXT_PATH, '', $url['path']);
  $method = strtolower($_SERVER['REQUEST_METHOD']);
  
  route($rpath, $method);
  
  \partials\footer();
  
} catch(Throwable $e) {

  die('<h1>何かが凄くおかしいようです。</h1>');
  
}
