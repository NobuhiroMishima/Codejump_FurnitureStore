<?php

require_once 'config.php';

//Library
require_once SOURCE_BASE . 'libs/helper.php';
require_once SOURCE_BASE . 'libs/router.php';

// Model
require_once SOURCE_BASE . 'models/item.model.php';

// DB
require_once SOURCE_BASE . 'db/datasource.php';
require_once SOURCE_BASE . 'db/item.query.php';

//partials
require_once SOURCE_BASE . 'partials/header.php';
require_once SOURCE_BASE . 'partials/footer.php';

// View
require_once SOURCE_BASE . 'views/home.php';
require_once SOURCE_BASE . 'views/product.php';


use function lib\route;

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
